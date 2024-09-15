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
    var maxSpeed = 250
    let subModel: String?
    
    func lookGood(){
        print ("looking good")
    }
}


class CamaroFuelHighConsumer: ChevroletCamaro {
    override var maxSpeed: Int {
        get{
            return 300
        }
        set{
            super.maxSpeed = newValue
        }
    }
    
    func eatFuel(){
        print ("being useless")
    }
}

let camaro5L = CamaroFuelHighConsumer(subModel: "Camaro 5.0)")

print("\(camaro5L.maxSpeed)")

// FIXME: - rework

class CamaroMoneySaver: ChevroletCamaro{
    func saveMoney(){
        print ("being useless cheaper")
    }
}

let camaro2L = CamaroMoneySaver(subModel: "Camaro 2.0")

camaro2L.move()
camaro2L.saveMoney()



