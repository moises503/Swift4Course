//Optionals
var number : Int?
print(number)

number = 100
print(number!)

var age : Int?
age = 12

if let userAge = age {
    print("user have age")
    if age! > 15 {
        print("can access")
    } else {
        print("can not access")
    }
} else {
    print("user does not have age")
}

//Strings
var name = "Moises"
var lastName = "Reyes"

name + lastName
name.lowercased()
name.count

let numberString : String = String(10)
let stringNumber = Int("10")
