/*:
# Basics

Guiding Principles:

* Safety
* Functional

*/

/*: 
## Explicit Mutability
* `let` implies value is **constant**
* `var` allows you to change the value of the variable
*/

let immutable = 3
//immutable = 4 // Does not compile

var mutable = 3
mutable = 4 // No problem!

/*:
## Static Typing
*/

/*: Integer */
let numberAsInt = 3

/*: Double */
let numberAsDouble = 3.0

/*: 
Can explicity define to desired type

> let <variableName>:<type> = <value>
*/
let numberAsFloat:Float = 3.0

/*: String */
let string = "Hello"

/*: 
Collections know the types of the nested elements

The following is an array of type Int

*/
let array = [1,2,3,4,5]

// is the same as:

let typedArray:[Int] = [1,2,3,4,5]

// because it's `let`, we cannot change it
//typedArray.append(6) // does not compile

var mutableArray = [1,2,3,4,5,6]
mutableArray.append(7)



