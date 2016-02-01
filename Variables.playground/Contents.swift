//: a Playground, following guidance from Swift Programing: The Big Nerd Ranch Guide by Matthew Mathias and John Gallagher. This particular literature was recommended by Professor Steinmetz at Augsburg College.

import Cocoa

//Designing a town in this code... how many stop lights?
//var numberOfStopLights = "four"
//a new string variable
//the assignop "=" assigns the value on the RIGHT to the variable on the LEFT

/*
The swift compiler has "type inference." It is able to tell that
numberOfStopLights is an instance of a String variable because of its quotation marks "". In swift, this makes this VARIABLE a String Literal
*/

/*
numberOfStopLights += 2
results in a COMPILE ERROR! It does not make sense to add a number to a String.
the book proceeds to suggest re-intializing our variable to be an integer, then try this again:
*/

/*
declare a variable called numberOfStopLights of type Int that starts with
a value of 4.
*/

//var numberOfStopLights: Int = 4

/*
clon casts the variable to a type, in this case, Int for Integer!
This is what Swift calls "TYPE ANNOTATION." and it declares the variable's type!
*/

//numberOfStopLights += 2 //can now add numeric value!

/*
CANNOT CONVERT A STRING INTO A INT
var numberOfStopLights: Int = "four"
COMPILE ERROR
*/

//use the let keyword to create constants
let numberOfStopLights: Int = 4

//numberOfStopLights += 2
/*
ANOTHER COMPILE ERROR
Using let creates a constant, we cannot change the value of numberOfStopLights
*/

var population : Int
population = 5422
let townName: String = "knoWhere"

//STRING INTERPOLATION
//will create a discription of the town using all the data we created so far.

/*let townDescription =
"\(townName) has a population of \(population), and \(numberOfStopLights) stoplights
*/

//this is equivalent to Java's adding Strings together, but in Swift, any data type can be used this way



var unemployment : Double
unemployment = 17

let townDescription =
"\(townName) has a population of \(population), \(numberOfStopLights) stoplights and an unemployment rate of \(unemployment)%."

print(townDescription)

//NOTE THAT the swift compiler seems not to work well when variables are declared AFTER they are called for something. Instance variables must be declared at the top before being referenced at all!

// it seems that \() is a way to pull instance variables into a String.


