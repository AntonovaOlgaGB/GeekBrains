import Foundation

enum Actions {
    case switchEngine
    case switchWindow
    case takeOff5kg
    case putOn5kg
}

enum engineType {
    case diesel
    case petrol
}

enum colour {
    case blue
    case white
    case black
    case grey
}

enum options {
    case conditioner
    case climateControl
    case cruiseControle
}

struct SportCar {
    var engineType: engineType
    var colour: colour
    var options: options
    var mark: String
    var year: Int
    var capacity: Double
    var isEngineStarted: Bool
    var isWindowOpen: Bool
    var load: Double
    
    mutating func doAction(act: Actions) {
        switch act {
        case .switchEngine: self.isEngineStarted = !self.isEngineStarted
        case .switchWindow: self.isWindowOpen = !self.isWindowOpen
        case .takeOff5kg: self.load -= 5
        case .putOn5kg: self.load += 5
        }
    }
}


struct TrunkCar {
    var engineType: engineType
    var colour: colour
    var options: options
    var mark: String
    var year: Int
    var capacity: Double
    var isEngineStarted: Bool
    var isWindowOpen: Bool
    var load: Double
    
    mutating func doAction(act: Actions) {
        switch act {
        case .switchEngine: self.isEngineStarted = !self.isEngineStarted
        case .switchWindow: self.isWindowOpen = !self.isWindowOpen
        case .takeOff5kg: self.load -= 5
        case .putOn5kg: self.load += 5
        }
    }
}


var carOne = SportCar(engineType: .diesel, colour: .black, options: .climateControl, mark: "Ferrari", year: 2015, capacity: 25, isEngineStarted: true, isWindowOpen: false, load: 20)
var carTwo = TrunkCar(engineType: .diesel, colour: .blue, options: .cruiseControle, mark: "Ford", year: 2018, capacity: 35, isEngineStarted: true, isWindowOpen: false, load: 20)

carOne.doAction(act: .switchEngine)
carTwo.doAction(act: .putOn5kg)
print(carOne)
print(carTwo)

