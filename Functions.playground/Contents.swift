//Functions
func printInScreen(greeting : String){
    print(greeting)
}

printInScreen(greeting: "hello swift 4")

func printGreeting() -> String{
    return "Hello my best friend"
}

printGreeting()

//Function types
// The function type only catch the value that equals to the function

func add(a: Int, b: Int) -> Int{
    return a + b
}

var functionType : (Int, Int) -> Int = add

func calculator(a : Int, b : Int, mathOperation : (Int, Int) -> Int) -> Int{
    return mathOperation(a,b)
}

var result = calculator(a: 8, b: 5, mathOperation: add(a:b:))

//Closures

var multiplication : (Int, Int) -> Int
var addition : (Int, Int) -> Int

/*multiplication = {(a : Int, b : Int) -> Int in
    return a * b
}*/

/*multiplication = {(a : Int, b : Int) -> Int in
    a * b
}*/

multiplication = {
    $0 * $1
}

multiplication(5, 6)


func translate(greeting : String) -> (String) -> String{
    return {
        (name : String) -> String in
            return greeting + " " + name
    }
}


var englishGreeting = translate(greeting: "Hello")
var spanishGreeting = translate(greeting: "Hola")

englishGreeting("Moises")
spanishGreeting("Norma")


