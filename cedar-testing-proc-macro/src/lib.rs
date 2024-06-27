extern crate proc_macro;
use proc_macro::TokenStream;
use quote::{format_ident, quote};
use std::fs;
use syn::{parse_macro_input, LitStr};

#[proc_macro]
pub fn generate_tests(input: TokenStream) -> TokenStream {
    let input = parse_macro_input!(input as LitStr);
    let dir_path = input.value();

    let mut test_functions = Vec::new();

    if let Ok(entries) = fs::read_dir(dir_path) {
        for entry in entries {
            if let Ok(entry) = entry {
                let path = entry.path();
                if path.extension().and_then(|s| s.to_str()) == Some("json") {
                    if let Some(file_name) = path.file_name().and_then(|s| s.to_str()) {
                        let test_fn_name = format_ident!("test_{}", file_name.replace(".", "_"));
                        let file_path = path.to_str().unwrap();
                        let test_fn = quote! {
                            #[test]
                            #[ignore]
                            fn #test_fn_name() {
                                let _file_path = #file_path;
                                // Add test logic here
                                println!("Testing with file: {}", _file_path);
                            }
                        };
                        test_functions.push(test_fn);
                    }
                }
            }
        }
    }

    let output = quote! {
        #(#test_functions)*
    };

    output.into()
}
