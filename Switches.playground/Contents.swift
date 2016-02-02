//: Switches! Chapter 5
//Copyright 2015, Big Nerd Ranch LLC.

//Drew Hagen's Playground code & documentation on working through 'Swift Programming'

//To anyone who found this on my GitHub,
//Please assist yourself by buying the book:
//       http://amzn.com/0134398017

//My notes are sloppy, abbreviated and will not be effective in teaching anyone,
//nor is it intended to! It has been commited to my repository to prove that I have worked through this literature.

//Seriously, don't cheat yourself out of proper education, or theif just some BASIC code without through explanation from the authors of this book-- BUY IT INSTEAD! Its worth every penny.



import Cocoa

/*      basic 'template'
Switch aValue {
case someValueToCompare:
    //Do something to respond

case anotherValueToCompare:
    //Do something to respond

default: //(kind of like the else statement)
    //Do something when there are no matches
*/


var statusCode : Int = 404
var errorString : String = "The request failed with the error:"
switch statusCode {
/*case 400:
    errorString = "Bad Request"
    
case 401:
    errorString = "Unauthorized"
    
case 403:
    errorString = "Forbidden" */
    
case 400, 401, 403, 404:
    errorString = "There was something wrong with the request."
    fallthrough  //fallthrough : a CONTROL TRANSFER STATEMENT
default:
    errorString += " Please review the request and try again"
}
//Swift switch is the opposite of how C, Objective-C and Java work with breaks

var statusCode2 : Int = 404
var errorString2 : String = "The request failed with the error:"
switch statusCode2 {
case 100, 101:
    errorString2 += " Informational, 1xx."
    
case 204:
    errorString2 += " Successful but no content, 204."
    
case 300...307:
    errorString2 += " Redirection, 3xx"

case 400...417:
    errorString2 += " Client error, 4xx"
    
case 500...505:
    errorString2 += " Server error, 5xx"

default:
    errorString2 = "Unknown. Please review the request and try again"
}


//STRING INTERPOLATION and VALUE BINDING
var statusCode3 : Int = 302
var errorString3 : String = "The request failed with the error:"
switch statusCode3 {
case 100, 101:
    errorString3 += " Informational, \(statusCode3)."
    
case 204:
    errorString3 += " Successful but no content, 204."
    
case 300...307:
    errorString3 += " Redirection, \(statusCode3)"
    
case 400...417:
    errorString3 += " Client error, \(statusCode3)"
    
case 500...505:
    errorString3 += " Server error, \(statusCode3)"
    
case let unknownCode: /*Value binding, and unknownCode can only be referenced in body below:*/
    errorString3 = "\(unknownCode) is not a known error code"
}


//USING WHERE's
//var statusCode4 : Int = 206
var statusCode4 : Int = 418
var errorString4 : String = "The request failed with the error:"
switch statusCode4 {
case 100, 101:
    errorString4 += " Informational, \(statusCode4)."
    
case 204:
    errorString4 += " Successful but no content, 204."
    
case 300...307:
    errorString4 += " Redirection, \(statusCode4)"
    
case 400...417:
    errorString4 += " Client error, \(statusCode4)"
    
case 500...505:
    errorString4 += " Server error, \(statusCode4)"
    
case let unknownCode2 where (unknownCode2 >= 200 && unknownCode2 < 300)
    || unknownCode2 > 505:
    errorString4 = "\(unknownCode2) is not a known error code."
    
default:
    errorString4 = "Unexepected error encountered"
}


//   TUPLEs
let error = (code: statusCode4, error: errorString4)

//pull value by index
error.0
error.1

//pull value by name
error.code
error.error

//      PATTERN MATCHING using two web requests
let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case(404,404):
    print("No items found")
case (404, _):
    print("First item not found")
case (_, 404):
    print("Second item not found")
default:
    print("All items found.")
}

let age = 25
switch age {
case 18...35:
    print("Cool demographic")
default:
    break
}

//BETTER PRACTICE FOR ONE/RANGE CONDITIONALS
if case 18...35 = age {
    print("Cool demographic")
}

//WHERE CLAUSES work with if and else too!
if case 18...35 = age where age >= 21 {
    print("In cool demographic and of drinking age")
}

let point = (x: 1, y: 4)

//BRONZE CHALLANGE
switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
default:
    print("Case not covered.")
}

