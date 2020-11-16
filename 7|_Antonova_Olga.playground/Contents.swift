import Foundation

enum RepairError: Error {
    case repairFailed
    case negativeWorkHours
}

struct workTrack {
    var hours: Int
    var wage: Double
    var fact: Int
}

class Repair {
    let fullWorkCrew = ["painter", "electrician", "plumber"]
    var workCrew = [
        //"painter" : workTrack (hours: 16, wage: 1000, fact: 0),
        "electrician": workTrack (hours: 25, wage: 1500, fact: 0),
        "plumber": workTrack (hours: 20, wage: 1200, fact: 0)
    ]
    func duration(profession: String) -> Int? {
        return workCrew[profession]?.hours
    }
    func canRepairBeFinished() -> (Bool, RepairError?) {
        if workCrew.count != fullWorkCrew.count
        {
            return (false, RepairError.repairFailed)
            
        }
        for x in fullWorkCrew {
            if workCrew.index(forKey: x) == nil
            {
                return (false, RepairError.repairFailed)
            }
        }
        return (true, nil)
    }
    func doWork(crewMember: String, hoursWorked: Int) throws -> Void {
        
        guard hoursWorked > 0 else {
            throw RepairError.negativeWorkHours
        }
        
        workCrew[crewMember]?.fact += hoursWorked
    }
}

let myrepair = Repair()
myrepair.canRepairBeFinished()
do {
    try myrepair.doWork(crewMember: "painter", hoursWorked: -3)
} catch let error {
    print(error)
}




