/*:
# Structs

Structs behave very similar to classes except for the following:

* Structs **cannot** inherit from anything
* Structs are **pass by value** rather than by reference
* Structs have a "free" member initializer
* Structs defined as `let` have properties that not mutable

*/

//: Free Initializer
struct Size {
    let width:Float
    let height:Float
}
let s = Size(width: 100, height: 100)

//: Can have computed properties
struct AwesomeSize {
    let width:Float
    let height:Float
    var area:Float{
        get {
            return width * height
        }
    }
}
let awesome = AwesomeSize(width: 100, height: 100)
print(awesome.area)

//: Can have methods
struct Person {
    let name:String

    func speakName() {
        print("My name is \(name)")
    }
}
let p = Person(name: "john")
p.speakName()


/*:
### Mutability
*/

struct Car {
    let modelName:String
    var color:String
}

//: let structs are not mutable even if var property
let c = Car(modelName: "Ford", color: "Blue")
//c.modelName = "Dodge" --> does not compile
//c.color = "Red" --> does not compile

var c2 = Car(modelName: "Honda", color: "Red")
//c2.modelName = "Chevy" --> does not compile b/c it's a let
c2.color = "Blue"

//: If want to mutate var, must use `mutating` function
struct BeerBottle {
    var remaining:Int

    mutating func drink() {
        remaining-=100
    }
}

var b = BeerBottle(remaining: 1000)
b.drink()

let bottle = BeerBottle(remaining: 1000)
//bottle.drink() --> does not compile

