import Foundation

protocol Car: AnyObject {
    
    
    var isEngineStarted: Bool { get set }
    var isWindowOpened: Bool { get set }
    var doorsNumber: Int { get }
    var hullColour: String { get }
    func doAction()
}

extension Car {
    func switchEngine() {
        self.isEngineStarted.toggle()
    }
    func switchWindow() {
        self.isWindowOpened.toggle()
    }
}

class truncCar: Car, CustomStringConvertible {
    func doAction() {
        print(1)
    }
    
    var isEngineStarted: Bool
    var isWindowOpened: Bool
    var doorsNumber: Int
    var hullColour: String
    var truncCapacity: Double
    var description: String = "My trunc car: "
    
    init(isEngineStarted:Bool, isWindowOpened: Bool, doorsNumber: Int, hullColour: String, truncCapacity: Double) {
        self.isEngineStarted = isEngineStarted
        self.isWindowOpened = isWindowOpened
        self.doorsNumber = doorsNumber
        self.hullColour = hullColour
        self.truncCapacity = truncCapacity
        self.description = self.description + (isEngineStarted ? "Engine on" : "Engine off")}
}

let myTruncCar1 = truncCar(isEngineStarted: false, isWindowOpened: false, doorsNumber: 5, hullColour: "Blue", truncCapacity: 45.5)
let myTruncCar2 = truncCar(isEngineStarted: false, isWindowOpened: true, doorsNumber: 5, hullColour: "Red", truncCapacity: 55.5)

myTruncCar1.switchEngine()
print(myTruncCar1)



