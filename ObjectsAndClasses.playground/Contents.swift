// Objects and Classes
import UIKit

class Vehicle {
    
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
        //accellerate
        if self.model == "Corvette" {
            print("Vroom, Vroom!")
        } else {
            print("Putt Putt Putt")
        }
    }
    
    func brake() {
        // braking
        print("Screeech!")
    }
}

var redCar = Vehicle()
print(redCar.headlights)

redCar.model = "Corvette"
redCar.drive()

var blueCar = Vehicle()
blueCar.model = "VW Bug"
blueCar.drive()

// Pass by reference

func transMogifier(vehicle: Vehicle) {
    vehicle.model = "Super Vette"
}

print("Blue Car Model Before: \(blueCar.model)")
// perform in place modification
transMogifier(vehicle: blueCar)
print("Blue Car Model After: \(blueCar.model)")


// pass by value

//func passByValue(age: Int) {
//    age = 10
//}




