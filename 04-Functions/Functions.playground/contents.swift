
/*:
# Functions

In Swift, functions are just named closures, and closures are first-class types

*/

//: Basic Function
func sayHappyMothersDay() {
    println("Happy Mother's Day")
}
sayHappyMothersDay()

//: Use the -> to indicate return value
func add2Plus2() -> Int {
    return 2 + 2
}
add2Plus2()

//: Using named parameters
func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}
add(20, 24)

//: Default parameters
func addWithDefault(number1: Int, number2: Int = 10) -> Int {
    return number1 + number2
}
addWithDefault(10)

//: External named parameters
func addNumber(a: Int, toNumber b:Int) -> Int {
    return a + b
}
addNumber(2, toNumber: 5)


/*:
Function as parameters

This is one of the key principles of Functional Programming.

*/

//: Accepting functions as a parameter
func combineNumbers(a: Int, b:Int, expr: (Int, Int) -> (Int)) -> Int {
    println("Got \(a) and \(b) as inputs")
    return expr(a,b)
}

//: Using the functions
combineNumbers(11, 1, { (a, b) -> Int in
    return a - b
})

//: As a "Trailing Closure"
combineNumbers(2, 3) { (a, b) in
    return a + b
}

//: Closures as a property
let add3Numbers = { (a: Int, b:Int, c:Int) -> Int in
    return a + b + c
}
add3Numbers(1,2,3)
