#[test_only]
module calculator::calculator_tests;
use std::debug;
use calculator::calculator;


#[test]
fun test_calculator() {
    let(add, subtract, divide, multiply) = calculator::answer(15, 3);
    debug::print(&add);
    debug::print(&subtract);
    debug::print(&divide);
    debug::print(&multiply);
}
