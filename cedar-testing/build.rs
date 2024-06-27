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

    let test_cases = fs::read_dir(&test_dir)?
        .map(|dir_entry_res| dir_entry_res.unwrap().file_name().into_string().unwrap())
        .filter(|file_name| file_name.ends_with(".json") && !file_name.ends_with(".entities.json"))
        .map(|x| create_test_case(&test_dir, &x))
        .collect::<Vec<_>>()
        .join("\n");

    let out_dir = env::var("OUT_DIR")?;
    let dest_path = Path::new(&out_dir).join("generated_tests.rs");

    fs::write(dest_path, test_cases)?;
    Ok(())
}

fn create_test_case(test_dir: &str, file_name: &str) -> String {
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
}

include!("src/resolve_integration_test_path.rs");
