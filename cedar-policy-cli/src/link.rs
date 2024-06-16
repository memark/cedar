use super::{
    create_slot_env, update_template_linked_file, Arguments, CedarExitCode, PoliciesArgs,
    TemplateLinked,
};
use cedar_policy::PolicyId;
use clap::{arg, Args};
use miette::{miette, Result};

#[derive(Args, Debug)]
pub struct LinkArgs {
    /// Policies args (incorporated by reference)
    #[command(flatten)]
    pub policies: PoliciesArgs,
    /// Id of the template to link
    #[arg(long)]
    pub template_id: String,
    /// Id for the new template linked policy
    #[arg(short, long)]
    pub new_id: String,
    /// Arguments to fill slots
    #[arg(short, long)]
    pub arguments: Arguments,
}

pub fn link(args: &LinkArgs) -> CedarExitCode {
    if let Err(err) = link_inner(args) {
        println!("{err:?}");
        CedarExitCode::Failure
    } else {
        CedarExitCode::Success
    }
}

fn link_inner(args: &LinkArgs) -> Result<()> {
    let mut policies = args.policies.get_policy_set()?;
    let slotenv = create_slot_env(&args.arguments.data)?;
    policies.link(
        PolicyId::new(&args.template_id),
        PolicyId::new(&args.new_id),
        slotenv,
    )?;
    let linked = policies
        .policy(&PolicyId::new(&args.new_id))
        .ok_or_else(|| miette!("Failed to find newly-added template-linked policy"))?;
    println!("Template-linked policy added: {linked}");

    // If a `--template-linked` / `-k` option was provided, update that file with the new link
    if let Some(links_filename) = args.policies.template_linked_file.as_ref() {
        update_template_linked_file(
            links_filename,
            TemplateLinked {
                template_id: args.template_id.clone(),
                link_id: args.new_id.clone(),
                args: args.arguments.data.clone(),
            },
        )?;
    }

    Ok(())
}
