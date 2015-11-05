
/*:
# Control Flow
*/

/*:
For Loops

    for (NSUInteger i = 0; i < 5; i++) {
        NSLog(@"Loop Number: %tu", i);
     }
*/

for i in 0..<5 {
    print("Loop Number: \(i)")
}

/*:
Dictionary Enumeration

    [grades enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        NSLog("%@ got a grade of %@ in class", key, obj);
    }];
*/

let grades = ["Margaret" : "A", "Bob" : "A", "David" : "C", "Susie" : "B"]

for (name, grade) in grades {
    print("\(name) got a grade of \(grade) in class")
}

/*: 
Tuples

The above shows one example of a tuple - an arbitrary collection of
values grouped together. Can be used to return multiple values
from a single function

*/

/*:
Switch

The switch statement in Swift looks very similar to any other 
switch statement with the following differences:

* No automatic fall through like in Objective-C
* Cases **must** be exhaustive
* Allows for pattern matching

Because of the power of the switch, this will be used 
much more frequenly then ever before.
*/

//: Basic Example
let four = 4
switch(four) {
case 0: print("It's a zero")
case 1: print("It's a one")
case 2: print("It's a two")
case 3: print("It's a three")
case 4: print("It's a four")
default: print("It's a BIG number")
}

//: Pattern Matching
switch(four) {
case 1...3: print("It's less than four!")
case 4: print("It's four!")
default: print("It's much larger than four")
}

//: Switch on Any Type

let name = "John Smith"
switch(name){
case "John Smith": print("JOHN!!!")
default: print("nope")
}





