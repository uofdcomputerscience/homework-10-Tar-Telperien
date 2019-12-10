import Foundation

// Implement an Error type. Make sure it has at least two values.
enum CSErrors: Error {
    case forgotASemicolonAndSoYourComputerShallExplode
    case nullPointerExceptionsMeanJavaHatesYou
    case serverFullOfBees
}

// Implement a function that returns a Result of string or your error type
func doAThing(inputNum:Int) throws -> String {
    let str: String = "Congrats, you read my mind and met all the implicit conditions!"
    if (0 <= inputNum && inputNum <= 20) {
        return str
    }
    else if (inputNum < 0) {
        throw CSErrors.forgotASemicolonAndSoYourComputerShallExplode
    }
    else if (inputNum < 40) {
        throw CSErrors.nullPointerExceptionsMeanJavaHatesYou
    }
    else {
        throw CSErrors.serverFullOfBees
    }
}

// Call your function in a way that will return an error result, and handle that error.
do {
    let itWorked: String = try doAThing(inputNum: -2)
    print (itWorked)
}
catch {
    print("You put in a wrong number, so you got this error instead of your nice string: \(error)")
}

// Call your function in a way that will return a success result, and handle the value.
do {
    let itReallyWorked: String = try doAThing(inputNum: 10)
    print (itReallyWorked)
}
catch {
    print("You put in a wrong number, so you got this error instead of your nice string: \(error)")
}
