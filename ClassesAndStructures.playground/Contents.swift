//Enums

enum ValidCards : String {
    case MasterCard
    case Visa
    case chase
}

let visaCard = ValidCards.Visa

let userCard = "MasterCard"

switch userCard {
case ValidCards.MasterCard.rawValue:
    print("Valid card")
case ValidCards.Visa.rawValue:
    print("Valid card")
case ValidCards.chase.rawValue:
    print("Invalid card")
default:
    print("Invalid information")
}
//Structures
struct Rectangle{
    var x = 0.0
    var y = 0.0
    var width = 0.0
    var height = 0.0
    
    func area() -> Double{
        return width * height
    }
}
var firstRectangle = Rectangle()
firstRectangle.area()

//Classes and objects

class Table {
    
    var material : String
    var shape : String
    
    init(material : String, shape : String){
        self.material = material
        self.shape = shape
    }
    
    func tableShape() -> String {
        return self.shape
    }
    
    func description() -> String {
        return "This is a \(material) table and its shape is \(shape)"
    }
}


var firstTable = Table(material: "wooden", shape: "round")
print(firstTable.tableShape())
print(firstTable.description())


//Inheritance and polymorphism

class RoundTable : Table {
    override func tableShape() -> String {
        return "round"
    }
}

var secondTable = RoundTable(material: "wooden", shape: "round")

print(secondTable.tableShape())


class BasicTable{
    var area : Double
    
    init(area : Double){
        self.area = area
    }
    
    func calculateArea(param1 : Double, param2 : Double){
    }
}

class SquareTable : BasicTable{
    override func calculateArea(param1 : Double, param2 : Double){
        self.area = param1 * param2
    }
}

class TriangleTable : BasicTable{
    override func calculateArea(param1 : Double, param2 : Double){
        self.area = (param1 * param2) / 2
    }
}

