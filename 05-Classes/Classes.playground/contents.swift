
/*:

# Classes

Classes are similar to any other programming language. Big benefits from 
Objective-C are:

* No more header files (although, I like header files...)
* No base class (but you still can inherit from `NSObject` if needed)

Big thing to remember with classes, is that initializers must fully
initialize all properties of a class.

*/

//: No properties, no initializer required
class Person {

}
let p = Person()


//: Non-optional property must be set in the intializer
class Dog {
    let bread:String
    init(bread:String){
        self.bread = bread
    }
}
let d = Dog(bread: "Pug")

//: Can set default values on properties without requiring initializers
class Car {
    let color = "blue"
}
let c = Car()

//: Can also set properties as optional
class Exam {
    var finalGrade:Int? = nil
}
let e = Exam()

//: Inheritence allows for property overrides
class Poodle:Dog {
    init(){
        super.init(bread:"Poodle")
    }
}
let poodle = Poodle()

//: Methods are just functions
class Child {
    func talk() {
        println("I like candy")
    }
}
let child = Child()
child.talk()

//: Overriding methods must use override keyword for compiler level safety
class Toddler : Child {
    override func talk() {
        println("NO")
    }
}
let toddler = Toddler()
toddler.talk()

//: Computed properties - must be `var` since value can change
class Student {
    let name = "Jane"
    let school = "Western"
    var description:String {
        get {
            return "\(name) goes to \(school)"
        }
    }
}
let student = Student()
println(student.description)

//: Built in property observers give access to `newValue` and `oldValue`
class Beer {
    var rating:Int{
        willSet{
            println("Setting rating to \(newValue)")
        }
        didSet{
            println("Did set rating from \(oldValue)")
        }
    }

    init() {
        rating = 0
    }
}

// Use cmd+opt+enter to see console output
let beer = Beer()
beer.rating = 5
beer.rating = 10


/*:
### Mutability

Classes are pass by reference. If declared as a `var`, you can 
change the reference to a new class. If declared as `let`, the 
reference cannot be changed, but the properties can be changed
if they are declared as `var`

*/

class Truck {
    var weight = 1000
    let VIN = 12345
}

//: `let` cannot change the reference
let t1 = Truck()
//t1 = Truck() -> does not compile

//: `var` can change the reference
var t2 = Truck()
t2 = Truck()

//: `let` can change var properties but not let 
let t3 = Truck()
t3.weight = 1235
//t3.VIN = 1235632414 -> does not compile
