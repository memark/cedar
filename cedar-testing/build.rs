#![allow(
    dead_code,
    unused_imports,
    unused_variables,
    clippy::expect_used,
    clippy::unwrap_used,
    named_arguments_used_positionally
)]

use std::any;
use std::env;
use std::error::Error;
use std::fs;
use std::path::Path;
use std::path::PathBuf;

fn main() -> Result<(), Box<dyn Error>> {
    let test_dir = resolve_integration_test_path("corpus-tests")
        .into_os_string()
        .into_string()
        .unwrap();

    let test_cases = fs::read_dir(&test_dir)
        .unwrap()
        .map(|dir_entry_res| dir_entry_res.unwrap().file_name().into_string().unwrap())
        .filter(|file_name| file_name.ends_with(".json") && !file_name.ends_with(".entities.json"))
        .map(|file_name| {
            let test_name = format!("test_{}", file_name.replace(".json", ""));
            format!(
                r#"
                #[test]
                #[ignore]
                fn {test_name}() {{
                    let file_path = "{test_dir}/{file_name}";
                    perform_integration_test_from_json(file_path);
                }}
                "#,
            )
        })
        .collect::<Vec<_>>()
        .join("\n");

    let out_dir = env::var("OUT_DIR")?;
    let dest_path = Path::new(&out_dir).join("generated_tests.rs");

    fs::write(dest_path, test_cases)?;
    Ok(())
}

/// For relative paths, return the absolute path, assuming that the path
/// is relative to the root of the `CedarIntegrationTests` repo.
/// For absolute paths, return them unchanged.
///
/// # Panics
///
/// Panics if the environment variable `CARGO_MANIFEST_DIR` is not set,
/// and `CEDAR_INTEGRATION_TESTS_PATH` is not set.
/// `CARGO_MANIFEST_DIR` should be set by Cargo at build-time, but
/// `CEDAR_INTEGRATION_TESTS_PATH` overrides `CARGO_MANIFEST_DIR`.
fn resolve_integration_test_path(path: impl AsRef<Path>) -> PathBuf {
    if path.as_ref().is_relative() {
        if let Ok(integration_tests_env_var) = env::var("CEDAR_INTEGRATION_TESTS_PATH") {
            return PathBuf::from(integration_tests_env_var);
        }
        let manifest_dir = env::var("CARGO_MANIFEST_DIR")
            .expect("`CARGO_MANIFEST_DIR` should be set by Cargo at build-time.");
        let mut full_path = PathBuf::from(manifest_dir.clone());
        full_path.push("..");
        // We run `cargo test` for cedar-drt. In that case, CARGO_MANIFEST_DIR will be
        // `cedar-spec/cedar-drt` and we want `../cedar/cedar-integration-tests`
        if manifest_dir.ends_with("cedar-drt") {
            full_path.push("cedar");
        }
        full_path.push("cedar-integration-tests");
        full_path.push(path.as_ref());
        full_path
    } else {
        path.as_ref().into()
    }
}
