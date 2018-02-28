//Generics

//Same type
func showNumbers<T>(a : T, b : T){
    print("The numbers are \(a) and \(b)")
}

showNumbers(a: "20", b: "20.44")

func showNumbers<T, P>(a : T, b : P){
    print("The numbers are \(a) and \(b)")
}

showNumbers(a: "20", b: 20.44)

//Generic types

class Car {
    var color : String
    
    init(color : String){
        self.color = color
    }
}

class Depot<V>{
    var cars : [V] = []
    
    func addCar(car : V){
        self.cars.append(car)
    }
    
    func dropCar() -> V{
        return self.cars.remove(at: 0)
    }
}

var depot = Depot<Car>();

var firstCar = Car(color: "red")
var secondCar = Car(color: "blue")

depot.addCar(car: firstCar)
depot.addCar(car: secondCar)

class Motorcycle{
    var color : String
    init(color : String) {
        self.color = color
    }
}


var motorcycleDepot = Depot<Motorcycle>();

var firstM = Motorcycle(color: "red")
var secondM = Motorcycle(color: "black")

motorcycleDepot.addCar(car: firstM)
motorcycleDepot.addCar(car: secondM)





