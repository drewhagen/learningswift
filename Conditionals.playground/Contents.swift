//: CONDITIONALS, lesson in Swift Programming

import Cocoa

var population : Int = 5422
var message : String
var hasPostOffice : Bool = true

//If and Else in Swift. Does one action on one circumstance true, does another on circumstance false

if population < 10000 {
    message = "\(population) is a small town!"
}
else {
    message = "\(population) is a large town!"
}

print(message)

//COMPARISON OPERATORS, on PAGE 20

//If statement without the else. Does one action on one circumstance true, does NOTHING if false

if !hasPostOffice {
    print("Where do we buy stamps?")
}

//LOGICAL OPERATORS BEGIN ON PAGE 21

message = population < 10000 ? "\(population) is a small town!" : "\(population) is a large town!"

//^^ declares message based on condition ? ifTrue Action : elseIfFalse Action
// a ? b : c            if a, then b, else c
//PROS: Is concise! Good for one line statements
//CONS: just that-- if the conditional wraps to the next line, may as well use if and else for the readability


//NESTED IF AND ELSE

if population < 10000 {
    message = "\(population) is a small town!"
}
else {
    if population >= 10000 && population < 50000 {
        message = "\(population) is a medium town!"
    }
    else {
        message = "\(population) is a large town!"
    }
    message = "\(population) is a large town!"
}



