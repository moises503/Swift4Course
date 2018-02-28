enum DivideErrors : Error{
    case DivideByZero
}

func divide(a: Int, b : Int) throws -> Int{
    if b == 0{
        throw DivideErrors.DivideByZero
    }
    return a / b
}

do{
    let result = try divide(a: 8, b: 0)
} catch (DivideErrors.DivideByZero){
    print("Can not divide by zero")
}
