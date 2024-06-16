use super::CedarExitCode;
use clap::Args;
use miette::IntoDiagnostic;
use miette::Result;
use std::{fs::create_dir, path::Path};

#[derive(Args, Debug)]
pub struct NewArgs {
    /// Name of the Cedar project
    #[arg(short, long, value_name = "DIR")]
    pub name: String,
}

pub fn new(args: &NewArgs) -> CedarExitCode {
    if let Err(err) = new_inner(args) {
        println!("{err:?}");
        CedarExitCode::Failure
    } else {
        CedarExitCode::Success
    }
}

fn new_inner(args: &NewArgs) -> Result<()> {
    let dir = &std::env::current_dir().into_diagnostic()?.join(&args.name);
    create_dir(dir).into_diagnostic()?;
    let schema_path = dir.join("schema.cedarschema.json");
    let policy_path = dir.join("policy.cedar");
    let entities_path = dir.join("entities.jon");
    generate_schema(&schema_path)?;
    generate_policy(&policy_path)?;
    generate_entities(&entities_path)
}

/// Write a schema (in JSON format) to `path`
fn generate_schema(path: &Path) -> Result<()> {
    std::fs::write(
        path,
        serde_json::to_string_pretty(&serde_json::json!(
        {
            "": {
                "entityTypes": {
                    "A": {
                        "memberOfTypes": [
                            "B"
                        ]
                    },
                    "B": {
                        "memberOfTypes": []
                    },
                    "C": {
                        "memberOfTypes": []
                    }
                },
                "actions": {
                    "action": {
                        "appliesTo": {
                            "resourceTypes": [
                                "C"
                            ],
                            "principalTypes": [
                                "A",
                                "B"
                            ]
                        }
                    }
                }
            }
        }))
        .into_diagnostic()?,
    )
    .into_diagnostic()
}

fn generate_policy(path: &Path) -> Result<()> {
    std::fs::write(
        path,
        r#"permit (
principal in A::"a",
action == Action::"action",
resource == C::"c"
) when { true };
"#,
    )
    .into_diagnostic()
}

fn generate_entities(path: &Path) -> Result<()> {
    std::fs::write(
        path,
        serde_json::to_string_pretty(&serde_json::json!(
        [
            {
                "uid": { "type": "A", "id": "a"} ,
                "attrs": {},
                "parents": [{"type": "B", "id": "b"}]
            },
            {
                "uid": { "type": "B", "id": "b"} ,
                "attrs": {},
                "parents": []
            },
            {
                "uid": { "type": "C", "id": "c"} ,
                "attrs": {},
                "parents": []
            }
        ]))
        .into_diagnostic()?,
    )
    .into_diagnostic()
}
