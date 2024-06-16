use std::{fs::OpenOptions, io::Write};

use crate::{read_from_file_or_stdin, CedarExitCode};
use cedar_policy_formatter::{policies_str_to_pretty, Config};
use clap::{arg, Args};
use miette::{Context, IntoDiagnostic, Result};

#[derive(Args, Debug)]
pub struct FormatArgs {
    /// File containing the static Cedar policies and/or templates. If not provided, read policies from stdin.
    #[arg(short, long = "policies", value_name = "FILE")]
    pub policies_file: Option<String>,

    /// Custom line width (default: 80).
    #[arg(short, long, value_name = "UINT", default_value_t = 80)]
    pub line_width: usize,

    /// Custom indentation width (default: 2).
    #[arg(short, long, value_name = "INT", default_value_t = 2)]
    pub indent_width: isize,

    /// Automatically write back the formatted policies to the input file.
    #[arg(short, long, group = "action", requires = "policies_file")]
    pub write: bool,

    /// Check that the policies formats without any changes. Mutually exclusive with `write`.
    #[arg(short, long, group = "action")]
    pub check: bool,
}

pub fn format_policies(args: &FormatArgs) -> CedarExitCode {
    match format_policies_inner(args) {
        Ok(false) if args.check => CedarExitCode::Failure,
        Err(err) => {
            println!("{err:?}");
            CedarExitCode::Failure
        }
        _ => CedarExitCode::Success,
    }
}

/// Format the policies in the given file or stdin.
///
/// Returns a boolean indicating whether the formatted policies are the same as the original
/// policies.
fn format_policies_inner(args: &FormatArgs) -> Result<bool> {
    let policies_str = read_from_file_or_stdin(args.policies_file.as_ref(), "policy set")?;
    let config = Config {
        line_width: args.line_width,
        indent_width: args.indent_width,
    };
    let formatted_policy = policies_str_to_pretty(&policies_str, &config)?;
    let are_policies_equivalent = policies_str == formatted_policy;

    match &args.policies_file {
        Some(policies_file) if args.write => {
            let mut file = OpenOptions::new()
                .write(true)
                .truncate(true)
                .open(policies_file)
                .into_diagnostic()
                .wrap_err(format!("failed to open {policies_file} for writing"))?;
            file.write_all(formatted_policy.as_bytes())
                .into_diagnostic()
                .wrap_err(format!(
                    "failed to write formatted policies to {policies_file}"
                ))?;
        }
        _ => println!("{}", formatted_policy),
    }
    Ok(are_policies_equivalent)
}
