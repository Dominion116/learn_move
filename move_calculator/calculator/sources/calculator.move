module calculator::calculator{

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
    let result = num1 / num2;
    result as u32
}

public fun answer(num1: u16, num2: u16): u32 {
    let addition = add(num1, num2);
    let subtraction = subtract(num1, num2);
    let division = divide(num1, num2);
    let multiplication = multiply(num1, num2);

    (addtion, subtraction, division, multiplication as u32)
}
}
