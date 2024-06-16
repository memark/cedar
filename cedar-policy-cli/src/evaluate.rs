use super::{load_entities, read_schema_file, CedarExitCode, RequestArgs, SchemaFormat};
use cedar_policy::{eval_expression, Entities, EvalResult, Expression};
use clap::Args;
use miette::Context;
use std::str::FromStr;

#[derive(Args, Debug)]
pub struct EvaluateArgs {
    /// Request args (incorporated by reference)
    #[command(flatten)]
    pub request: RequestArgs,
    /// File containing schema information
    /// Used to populate the store with action entities and for schema-based
    /// parsing of entity hierarchy, if present
    #[arg(short, long = "schema", value_name = "FILE")]
    pub schema_file: Option<String>,
    /// Schema format (Human-readable or JSON)
    #[arg(long, value_enum, default_value_t = SchemaFormat::Human)]
    pub schema_format: SchemaFormat,
    /// File containing JSON representation of the Cedar entity hierarchy.
    /// This is optional; if not present, we'll just use an empty hierarchy.
    #[arg(long = "entities", value_name = "FILE")]
    pub entities_file: Option<String>,
    /// Expression to evaluate
    #[arg(value_name = "EXPRESSION")]
    pub expression: String,
}

pub fn evaluate(args: &EvaluateArgs) -> (CedarExitCode, EvalResult) {
    println!();
    let schema = match args
        .schema_file
        .as_ref()
        .map(|f| read_schema_file(f, args.schema_format))
    {
        None => None,
        Some(Ok(schema)) => Some(schema),
        Some(Err(e)) => {
            println!("{e:?}");
            return (CedarExitCode::Failure, EvalResult::Bool(false));
        }
    };
    let request = match args.request.get_request(schema.as_ref()) {
        Ok(q) => q,
        Err(e) => {
            println!("{e:?}");
            return (CedarExitCode::Failure, EvalResult::Bool(false));
        }
    };
    let expr =
        match Expression::from_str(&args.expression).wrap_err("failed to parse the expression") {
            Ok(expr) => expr,
            Err(e) => {
                println!("{:?}", e.with_source_code(args.expression.clone()));
                return (CedarExitCode::Failure, EvalResult::Bool(false));
            }
        };
    let entities = match &args.entities_file {
        None => Entities::empty(),
        Some(file) => match load_entities(file, schema.as_ref()) {
            Ok(entities) => entities,
            Err(e) => {
                println!("{e:?}");
                return (CedarExitCode::Failure, EvalResult::Bool(false));
            }
        },
    };
    match eval_expression(&request, &entities, &expr).wrap_err("failed to evaluate the expression")
    {
        Err(e) => {
            println!("{e:?}");
            return (CedarExitCode::Failure, EvalResult::Bool(false));
        }
        Ok(result) => {
            println!("{result}");
            return (CedarExitCode::Success, result);
        }
    }
}
