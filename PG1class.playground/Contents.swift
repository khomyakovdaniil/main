import UIKit

var greeting = "Hello, playground"


protocol Car {
    // MARK: - Internal
    var maxSpeed: Int { get }
    var brand: String { get }
    var color: String { get set }
    
    func move()
}

extension Car {
    func move() {
        print ("moving")
    }
}


class ChevroletCamaro: Car {
    // MARK: - Init
    init(subModel: String) {
        self.subModel = subModel
    }
  
    // MARK: - Internal
    let brand = "Chevrolet"
    var color = "Yellow"
    let maxSpeed = 250
    let subModel: String?
    
    func lookGood(){
        print ("looking good")
    }
}


class CamaroFuelHighConsumer: ChevroletCamaro {
    func eatFuel(){
        print ("being useless")
    }
}

let camaro351 = CamaroFuelHighConsumer(subModel: "Camaro351")

// FIXME: - rework

protocol Autobot {
    var beAutobot  :Bool  { get set }
}


class Bumblebee: ChevroletCamaro, Autobot {
   var beAutobot = false
    func transformIntoGiantRobot(){
        beAutobot = true
    }
    func fightForHumanity(){
        print ("defeating Decepticons")
    }
}
let zhuk = Bumblebee()

zhuk.move()
zhuk.fightForHumanity()
print ("my color is \(zhuk.color)")



