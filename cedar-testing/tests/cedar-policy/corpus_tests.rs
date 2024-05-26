#![allow(dead_code, unused_imports, unused_variables)]
/*
 * Copyright Cedar Contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//! Integration tests auto-generated using the differential tester.

use cedar_testing::integration_testing::perform_integration_test_from_json;
use cedar_testing::integration_testing::resolve_integration_test_path;
use std::path::Path;

use rstest::rstest;
use std::path::PathBuf;

#[rstest]
#[ignore]
fn corpus_tests(#[files("../cedar-integration-tests/corpus-tests/*.json")] filepath: PathBuf) {
    if filepath
        .file_name()
        .unwrap()
        .to_str()
        .unwrap()
        .ends_with(".entities.json")
    {
        return;
    }
    perform_integration_test_from_json(filepath);
}
