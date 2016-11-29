import UIKit
// Optionals!

var lotterWinnings: Int?
lotterWinnings = 500

if lotterWinnings != nil {
    print(lotterWinnings!)
}

if let winnings = lotterWinnings {
    print(winnings)
}

class Car {
    var model: String?
}

var vehicle: Car?

vehicle = Car()
vehicle?.model = "Corvette"

// Long ways
if let v = vehicle {
    if let model = v.model {
        print("Longways The model is: \(model)")
    }
}


// short cut

if let v = vehicle, let m = v.model {
    print("Shortcut The model is: \(m)")
}


var cars: [Car]?
cars = [Car]()

if let carArr = cars {
    if carArr.count > 0 {
        // run code
    }
}


if let carArr = cars , carArr.count > 0 {
    // run code
} else {
    // add a car
    cars?.append(Car())
    print(cars!.count)
}



// implicitly unwrapped

class Person {
    private var _age: Int!
    
    var age: Int {
        if _age == nil {
            _age = 15
        }
        
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()
print(jack.age)


class Dog {
    var species: String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var myDog = Dog(someSpecies: "Woofie")
print("My Dog has species of \(myDog.species)")

