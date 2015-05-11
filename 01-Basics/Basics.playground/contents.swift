/*:
# Basics

Apple's Guiding Principles:

* Safe - use the compiler to your advantage
* Modern - modern syntax and best practices
* Power - cool new things

*/

/*:
## Type Inference
The compiler can infer the type of the variable so there is no
need to explicity state the type.

In Objective-C everthing must be explicity declared:
> NSString *firstName = @"Jane"

*/

// Explicity define type
let firstName:String = "Jane"

// Use type inference
let lastName = "Doe" // String
let age = 42 // Int
let weight = 102.5 // Double

/*:
## Explicit Mutability
* `let` implies value is **constant**
* `var` allows you to change the value
*/

let immutable = 3
//immutable = 4 // Does not compile

var mutable = 3
mutable = 4 // No problem!

/*:
## Modern string interpolation.

Objective C:
> NSLog("Her name was %@ %@", firstName, lastName")

*/
println("Her name was \(firstName) \(lastName)")

/*: 
## Collections

2 main differences from Objective C:
* Collections can have any type - not just objects
* Collections are typed for more safety

*/

// Also type inferred
let array = [1, 2, 3, 4, 5]
var mutableArray = [1, 2, 3, 4, 5]

// Explicit typed collections
let strings:[String] = ["hi"]

// Mutability check:
//let array.append(2) // does not compile because not mutable
mutableArray.append(10) // no problem!

// Type check:
mutableArray.append(12) // ok!
//mutableArray.append("hi") // does not compile because of type

// Similar behaviour for dictionaries
let example:[String:String] = ["hi" : "john"]

let teamRatings = [
    "Maple Leafs" : 1.0,
    "Flyers" : 5.0,
    "Canadiens" : 2.0
]
//teamRatings["Canucks"] = 2.0 // does not compile

var mutableRatings = [
    "Maple Leafs" : 1.0,
    "Flyers" : 5.0,
    "Canadiens" : 2.0
]
mutableRatings["Canucks"] = 2.0 // does not compile
println(mutableRatings)





