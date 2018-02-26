//vars declaration
//var nameOfVar : Type = "something value"

var str : String = "Something"

str = "New text"

//constants declaration
//let nameOfConstant : Type = "something value"

let strConstant : String = "This is a constant"

var someNumber = 230


//Control estructures

var numberOne = 340
var numberTwo = 363

if numberOne > numberTwo {
    print("Number one is bigger than number two")
} else {
    print("Number two is bigger than number one")
}

//Loops
//While
var count = 0

while count < 2{
    print(count)
    count = count + 1
}

//Repeat
var countR = 0
repeat {
    print(countR)
    countR = countR + 1
} while countR < 2

//For
for i in 1...4{
    print(i)
}

for _ in 1...4{
    print("Lol")
}

//Switch

var dayNumber = 1

switch dayNumber {
case 0:
    print("No day")
case 1:
    print("Monday")
default:
    print("No valid day")
}

//Collections
//Arrays

var emptyArray = [String]()

emptyArray.append("Item 1")
emptyArray.append("Item 2")

emptyArray.insert("Lol", at: 1)


var bussiness = ["Apple", "Samsung", "Google"]

bussiness[1]
bussiness[2]

bussiness.first
bussiness.last
bussiness.count
bussiness.index(of: "Samsung")
bussiness.isEmpty

for company in 0...bussiness.count - 1{
    print(bussiness[company])
}

//Dictionaries

var products = ["Apple" : "iPhone X", "Samsung" : "Galaxy S8", "Google" : "Pixel 2"]
products["Apple"]
products.isEmpty
products.count

let keys = [String](products.keys)
let values = [String](products.values)

//Sets

var chess : Set<String> = ["King", "Queen", "Horse"]
var deck : Set<String> = ["King", "Queen", "Joker"]

chess.insert("Tower")

chess.intersection(deck)
chess.union(deck)
