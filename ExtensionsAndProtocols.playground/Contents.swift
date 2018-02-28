//Extensions

import UIKit

var text = "This text is too large"
text.capitalized

extension String{
    func isTooLarge(limit : Int) -> Bool{
        if self.count > limit {
            return true
        } else {
            return false
        }
    }
}

text.isTooLarge(limit: 5)

var platziConf = "PlatziConf2018"

extension String {
    func convertToHashTag() -> String{
        return "#\(self)"
    }
}

print(platziConf.convertToHashTag())

//Protocols

protocol MyFirstProtocol{
    var aleatory : Double {get set}
    func randomNumber()
}

class Raffle : MyFirstProtocol{
    var aleatory: Double = 5.55
    
    func randomNumber(){
        
    }
}

//Protocol types

protocol StabilizerType{
    var stabilizer : String {get set}
}

class IPhonePlusCamera : StabilizerType{
    var stabilizer: String = "Phisyc"
}

class IPhoneCamera : StabilizerType{
    var stabilizer: String = "Digital"
}

class FanBoy{
    var name : String
    var smartphoneWithStabilizer : StabilizerType
    
    init(name : String, smartphoneWithStabilizer : StabilizerType){
        self.name = name
        self.smartphoneWithStabilizer = smartphoneWithStabilizer
    }
    
    func specifications() -> String {
        return "stabilizer type \(smartphoneWithStabilizer.stabilizer)"
    }
}

var iPhone = IPhoneCamera()

var fan = FanBoy(name: "Moises", smartphoneWithStabilizer: iPhone)

fan.specifications()

//Protocol extensions

protocol Badge{
    func badgeType() -> String
}

extension Badge where Self : BasicUser{
    func badgeType() -> String {
        return "Basic user"
    }
}

class BasicUser : Badge{
    
}

class GuestUser : BasicUser{
    
}

class OrganizerUser : Badge{
    func badgeType() -> String {
        return "Organizer user"
    }
}

var basicUser = BasicUser()
basicUser.badgeType()

var organizerUser = OrganizerUser()
organizerUser.badgeType()

