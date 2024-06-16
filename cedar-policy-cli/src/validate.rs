use super::{read_schema_file, CedarExitCode, PoliciesArgs, SchemaFormat};
use cedar_policy::Validator;
use clap::{Args, ValueEnum};
use miette::Report;

#[derive(Args, Debug)]
pub struct ValidateArgs {
    /// File containing the schema
    #[arg(short, long = "schema", value_name = "FILE")]
    pub schema_file: String,
    /// Policies args (incorporated by reference)
    #[command(flatten)]
    pub policies: PoliciesArgs,
    /// Report a validation failure for non-fatal warnings
    #[arg(long)]
    pub deny_warnings: bool,
    /// Schema format (Human-readable or json)
    #[arg(long, value_enum, default_value_t = SchemaFormat::Human)]
    pub schema_format: SchemaFormat,
    /// Validate the policy using this mode.
    /// The options `permissive` and `partial` are experimental
    /// and will cause the CLI to exit if it was not built with the
    /// experimental feature `permissive-validate` and `partial-validate`, respectively, enabled.
    #[arg(long, value_enum, default_value_t = ValidationMode::Strict)]
    pub validation_mode: ValidationMode,
}

#[derive(Debug, Clone, Copy, ValueEnum)]
pub enum ValidationMode {
    /// Strict validation
    Strict,
    /// Permissive validation
    Permissive,
    /// Partial validation
    Partial,
}

pub fn validate(args: &ValidateArgs) -> CedarExitCode {
    let mode = match args.validation_mode {
        ValidationMode::Strict => cedar_policy::ValidationMode::Strict,
        ValidationMode::Permissive => {
            #[cfg(not(feature = "permissive-validate"))]
            {
                eprintln!("Error: arguments include the experimental option `--validation-mode permissive`, but this executable was not built with `permissive-validate` experimental feature enabled");
                return CedarExitCode::Failure;
            }
            #[cfg(feature = "permissive-validate")]
            cedar_policy::ValidationMode::Permissive
        }
        ValidationMode::Partial => {
            #[cfg(not(feature = "partial-validate"))]
            {
                eprintln!("Error: arguments include the experimental option `--validation-mode partial`, but this executable was not built with `partial-validate` experimental feature enabled");
                return CedarExitCode::Failure;
            }
            #[cfg(feature = "partial-validate")]
            cedar_policy::ValidationMode::Partial
        }
    };

    let pset = match args.policies.get_policy_set() {
        Ok(pset) => pset,
        Err(e) => {
            println!("{e:?}");
            return CedarExitCode::Failure;
        }
    };

    let schema = match read_schema_file(&args.schema_file, args.schema_format) {
        Ok(schema) => schema,
        Err(e) => {
            println!("{e:?}");
            return CedarExitCode::Failure;
        }
    };

    let validator = Validator::new(schema);
    let result = validator.validate(&pset, mode);

    if !result.validation_passed()
        || (args.deny_warnings && !result.validation_passed_without_warnings())
    {
        println!(
            "{:?}",
            Report::new(result).wrap_err("policy set validation failed")
        );
        CedarExitCode::ValidationFailure
    } else {
        println!(
            "{:?}",
            Report::new(result).wrap_err("policy set validation passed")
        );
        CedarExitCode::Success
    }
}
