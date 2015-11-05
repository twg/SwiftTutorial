
/*:
# Optionals

What the heck is an optional? That's right - we don't know!

What happens when you query a dictionary for a key? It's possible
that you get a value back, but it's also possible you don't have that key.
Should you return nil? A unique value? NSNotFound?

Optionals exist to represent that state, the chance an object may not exist

*/

//: This is of type `String`
var name = "Jane"

//: Setting name to nil will not compile - because `name` is not an optional
//name = nil 

let map = ["Toronto": "Canada", "Florida": "USA"]

//: This is of type `String?` - An optional string value that does exist
var toronto = map["Toronto"]

//: This is of type `String?` - An optional string value that doesn't exist
var boston = map["Boston"]

//: Setting optional strings to nil is fine
var optionalString:String? = "Jane"
optionalString = nil

/*:
Optionals are compiler level enforcement of dealing with nil.
In Objective-C sending messages to nil, doesn't crash (like other languages),
but rather, just silently returns nil again. This is usually fine, but in 
some cases, this creates wierd behaviour:

    [nil isEqualToString:nil] => false

It also helps enforce handling all cases which makes for a more robust program

*/

//: Check for nil first
if boston == nil {
    print("boston in nil")
}else{
    print("Boston is in \(boston!)")
}

//: If not nil, you can force unwrap using the ! operator
if toronto == nil {
    print("toronto in nil")
}else{
    print("toronto is in \(toronto!)")
}

//: Alteratively, use the if-let syntax for safer code. No ! operator

if let tor = toronto {
    print("toronto is in \(tor)")
}

if let bos = boston {
    print("boston is in \(bos)")
}else{
    print("Boston is nowhere to be found")
}


/*:
### Important

This concept is very important when dealing with parsing JSON!

*/



