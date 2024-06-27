// #![cfg(feature = "integration-testing")]

use cedar_testing::integration_testing::resolve_integration_test_path;

use cedar_testing_proc_macro::generate_tests;

#[test]
fn magnus_test_1() {
    // let a = 1;
}

generate_tests!(resolve_integration_test_path(folder));

#[test]
fn magnus_test_2() {
    // let a = 1;
}
