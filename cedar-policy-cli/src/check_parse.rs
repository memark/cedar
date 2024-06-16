use crate::{CedarExitCode, PoliciesArgs};
use clap::{command, Args};

#[derive(Args, Debug)]
pub struct CheckParseArgs {
    /// Policies args (incorporated by reference)
    #[command(flatten)]
    pub policies: PoliciesArgs,
}

pub fn check_parse(args: &CheckParseArgs) -> CedarExitCode {
    match args.policies.get_policy_set() {
        Ok(_) => CedarExitCode::Success,
        Err(e) => {
            println!("{e:?}");
            CedarExitCode::Failure
        }
    }
}
