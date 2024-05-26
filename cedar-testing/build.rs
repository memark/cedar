#![allow(
    dead_code,
    unused_imports,
    unused_variables,
    clippy::expect_used,
    clippy::unwrap_used,
    named_arguments_used_positionally
)]

use std::env;
use std::fs;
use std::path::Path;
use std::path::PathBuf;

fn main() {
    let out_dir = env::var("OUT_DIR").unwrap();
    let temp = resolve_integration_test_path("corpus-tests");
    let test_dir = temp.as_os_str().to_str().unwrap();
    let mut test_cases = String::new();

    for entry in fs::read_dir(test_dir).expect("Unable to read test directory") {
        let entry = entry.expect("Unable to read directory entry");
        let file_name = entry.file_name().into_string().expect("Invalid file name");

        if !file_name.ends_with(".json") {
            continue;
        }
        if file_name.ends_with(".entities.json") {
            continue;
        }

        let test_name = format!("test_{}", file_name.replace('.', "_"));

        test_cases.push_str(&format!(
            r#"
            #[test]
            #[ignore]
            fn {test_name}() {{
                let file_path = "{test_dir}/{file_name}";
                perform_integration_test_from_json(file_path);
            }}
            "#,
        ));
    }

    let dest_path = Path::new(&out_dir).join("generated_tests.rs");
    fs::write(&dest_path, test_cases).expect("Unable to write generated tests");
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
