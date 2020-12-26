protocol AdvanceLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate : AdvanceLifeSupport?
    func assessSituation() {
        print("Can you tell me what happened")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler:emilio)
emilio.assessSituation()
emilio.medicalEmergency()
