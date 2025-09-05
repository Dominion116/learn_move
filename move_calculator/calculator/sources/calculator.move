module calculator::calculator{

    use sui::event;

    public struct CalculationResult has copy, store, drop{
        addition: u32,
        subtraction: u32,
        division: u32,
        multiplication: u32,
    }

fun add(num1: u8, num2: u8): u32 {
    let result = num1 + num2;
    result as u32
}

fun subtract(num1: u8, num2: u8): u32 {
    let result = num1 - num2;
    result as u32
}

fun multiply(num1: u8, num2: u8): u32 {
    let result = num1 * num2;
    result as u32
}

fun divide(num1: u8, num2: u8): u32 {
    assert!(num2 != 0, 0);
    let result = num1 / num2;
    result as u32
}

public fun answer(num1: u16, num2: u16): (u32, u32, u32, u32) {
    let n1 = (num1 as u8);
    let n2 = (num2 as u8);

    let addition = add(n1, n2);
    let subtraction = subtract(n1, n2);
    let division = divide(n1, n2);
    let multiplication = multiply(n1, n2);

    event::emit(CalculationResult {
        addition,
        subtraction,
        division,
        multiplication,
    });
    (addition, subtraction, division, multiplication)
}

}
