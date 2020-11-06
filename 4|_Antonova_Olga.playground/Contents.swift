import UIKit

enum carOptions {
    case conditioner
    case cruiseControle
    case seatHeating
}

enum truncTypes {
    case pickup
    case van
    case refrigirator
    case dumpTrunc
}

enum sportoptions {
    case turboCharged
    case aeroDynamicProfile
    case cylinderDeactivation
}

enum actions {
    case openWindow
    case switchEngine
    case loadTrunc(value: Double)
    case addSpoiler
}

class Car {
    let colour: Int
    let options: carOptions
    let enginePower: Int
    var mileage: Double
    var isEngeenStarted: Bool
    var isDoorOpen: Bool
    var isWindowOpen: Bool
    init(colour: Int, options: carOptions, enginePower: Int, mileage: Double, isEngeenStarted: Bool, isDoorOpen: Bool, isWindowOpen: Bool) {
        self.colour = colour
        self.options = options
        self.enginePower = enginePower
        self.mileage = mileage
        self.isEngeenStarted = isEngeenStarted
        self.isDoorOpen = isDoorOpen
        self.isWindowOpen = isWindowOpen
    }
    func doAction(action: actions) {
        
    }
}

class truncCar: Car {
    var burden: Double
    let truncVolume: Double
    var hashitch: Bool
    let truncType: truncTypes
    init(colour: Int, options: carOptions, enginePower: Int, mileage: Double, isEngeenStarted: Bool, isDoorOpen: Bool, isWindowOpen: Bool, burden: Double, truncVolume: Double, hashitch: Bool, truncType: truncTypes) {
        self.burden = burden
        self.truncVolume = truncVolume
        self.hashitch = hashitch
        self.truncType = truncType
        super.init(colour: colour, options: options, enginePower: enginePower, mileage: mileage, isEngeenStarted: isEngeenStarted, isDoorOpen: isDoorOpen, isWindowOpen: isWindowOpen)
    }
    
    override func doAction(action: actions) {
        switch action {
        case .openWindow:
            self.isWindowOpen = true
        case .switchEngine:
            self.isEngeenStarted = !isEngeenStarted
        case .loadTrunc(let value):
            self.burden += value
        case .addSpoiler:
            print("Cant add spoiler to trunc car")
        }
    }
}

class sportCar: Car {
    var hasSpoiler: Bool
    let sportoption: sportoptions
    init(colour: Int, options: carOptions, enginePower: Int, mileage: Double, isEngeenStarted: Bool, isDoorOpen: Bool, isWindowOpen: Bool, hasSpoiler: Bool, sportoption: sportoptions) {
        self.hasSpoiler = hasSpoiler
        self.sportoption = sportoption
        super.init(colour: colour, options: options, enginePower: enginePower, mileage: mileage, isEngeenStarted: isEngeenStarted, isDoorOpen: isDoorOpen, isWindowOpen: isWindowOpen)
    }
    override func doAction(action: actions) {
        switch action {
        case .openWindow:
            self.isWindowOpen = true
        case .switchEngine:
            self.isEngeenStarted = !isEngeenStarted
        case .loadTrunc:
            print("Cant load sport car")
        case .addSpoiler:
            self.hasSpoiler = true
        }
    }
}

var mySportCar = sportCar(colour: 123, options: .conditioner, enginePower: 300, mileage: 30.34, isEngeenStarted: false, isDoorOpen: false, isWindowOpen: false, hasSpoiler: false, sportoption: .aeroDynamicProfile)

var myOtherSportCar = sportCar(colour: 345, options: .cruiseControle, enginePower: 250, mileage: 50.5, isEngeenStarted: false, isDoorOpen: false, isWindowOpen: false, hasSpoiler: false, sportoption: .cylinderDeactivation)

var myTruncCar = truncCar(colour: 234, options: .conditioner, enginePower: 150, mileage: 95.5, isEngeenStarted: false, isDoorOpen: false, isWindowOpen: false, burden: 0, truncVolume: 100, hashitch: true, truncType: .van)

mySportCar.doAction(action: .switchEngine)
mySportCar.doAction(action: .loadTrunc(value: 50))
myOtherSportCar.doAction(action: .openWindow)
myTruncCar.doAction(action: .loadTrunc(value: 50))
myTruncCar.doAction(action: .openWindow)

mySportCar
myOtherSportCar
myTruncCar
