//: Inheritance

import UIKit

class Vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
       print("I am the parent init")
    }
    
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
}


class SportsCar: Vehicle {
    override init () {
        super.init()
        print("I am the child init")
        make = "Chevrolet"
        model = "Corvette"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += currentSpeed * 3
    }
}


let someCar = SportsCar()

