use super::{read_from_file_or_stdin, CedarExitCode};
use cedar_policy::SchemaFragment;
use clap::{Args, ValueEnum};
use miette::Result;
use std::str::FromStr;

#[derive(Args, Debug)]
pub struct TranslateSchemaArgs {
    /// The direction of translation,
    #[arg(long)]
    pub direction: TranslationDirection,
    /// Filename to read the schema from.
    /// If not provided, will default to reading stdin.
    #[arg(short = 's', long = "schema", value_name = "FILE")]
    pub input_file: Option<String>,
}

/// The direction of translation
#[derive(Debug, Clone, Copy, ValueEnum)]
pub enum TranslationDirection {
    /// JSON -> Human schema syntax
    JsonToHuman,
    /// Human schema syntax -> JSON
    HumanToJson,
}

fn translate_to_human(json_src: impl AsRef<str>) -> Result<String> {
    let fragment = SchemaFragment::from_str(json_src.as_ref())?;
    let output = fragment.as_natural()?;
    Ok(output)
}

fn translate_to_json(natural_src: impl AsRef<str>) -> Result<String> {
    let (fragment, warnings) = SchemaFragment::from_str_natural(natural_src.as_ref())?;
    for warning in warnings {
        let report = miette::Report::new(warning);
        eprintln!("{:?}", report);
    }
    let output = fragment.as_json_string()?;
    Ok(output)
}

fn translate_schema_inner(args: &TranslateSchemaArgs) -> Result<String> {
    let translate = match args.direction {
        TranslationDirection::JsonToHuman => translate_to_human,
        TranslationDirection::HumanToJson => translate_to_json,
    };
    read_from_file_or_stdin(args.input_file.clone(), "schema").and_then(translate)
}

pub fn translate_schema(args: &TranslateSchemaArgs) -> CedarExitCode {
    match translate_schema_inner(args) {
        Ok(sf) => {
            println!("{sf}");
            CedarExitCode::Success
        }
        Err(err) => {
            eprintln!("{err:?}");
            CedarExitCode::Failure
        }
    }
}
