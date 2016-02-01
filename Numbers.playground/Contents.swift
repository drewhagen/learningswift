//: Numbers! Chapter 4
//Copyright 2015, Big Nerd Ranch LLC.

//Drew Hagen's Playground code & documentation on working through 'Swift Programming'

//To anyone who found this on my GitHub,
//Please assist yourself by buying the book:
    //       http://amzn.com/0134398017

    //My notes are sloppy, abbreviated and will not be effective in teaching anyone,
        //nor is it intended to! It has been commited to my repository to prove that I have worked through this literature.

//Seriously, don't cheat yourself out of proper education, or theif from the authors of this book-- BUY IT INSTEAD! Its worth every penny.


import Cocoa

//What are the lowest and highest values that can be assigned to an integer in Swift?

print("The maximum int value is \(Int.max)")
print("The minimum int value is \(Int.min)")

//OSX runs on a 64-bit architecture. The 32-bit of older iPhones means that integers will have a different range when being built in a progam targeting their 32-bit architecture. NOTE THAT SPECIFICALLY, these devices are
//              iPhone 5 and lower
//              iPads before the iPad Air
//              iPad Mini (before the retina display)
//              Apple TV gen 3 and earlier (before the current one)
//              iPod Touch 5th gen and lower (before the current one)
//              The Apple Watch also owns a 32-bit processor.

print("The maximum int value for 32bit devices is \(Int32.max)")
print("The minimum int value for 32bit devices is \(Int32.min)")

//There are other Int types that can run at assigned bit limitations.

print("The maximum int value for 64bit devices is \(Int64.max)")
//Not that this is the same as the first one (default) above.
print("The minimum int value for 64bit devices i \(Int64.min)")

//Remember the days of the Gameboy? That played 16bit audio?
print("The maximum int value for 16bit arc is \(Int16.max)")
print("The minimum int value for 16bit arc is \(Int16.min)")

//And there's those 8bit graphics...
print("The maximum int value for 8bit arc is \(Int8.max)")
print("The minimum int value for 8bit arc is \(Int8.min)")

//Unsigned Integers. Remember these? They do not include negative numbers.
print("The maximum int value is \(UInt.max)") //doulbe the normal max
print("The minimum int value is \(UInt.min)") //will always be zero.

//Even though there may be temptation to use UInts for counts, or other types of data that we know will never make sense to be negatives, there allegedly is a preference to use Int according to Big Nerd Ranch. Always use Ints. For some reason. Will be revealed in a later Chapter.

let numberOfPages: Int = 10 // An explicit declaration of type
let numberOfChapters = 3 // The compiler infers this to be of type int

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

//Declaring invalid values to integers...

//let firstBadValue: UInt = -2 //OVERFLOW! Cannot fit negative values.
//let secondBadValue: Int8 = 129 //OVERFLOW! Cannot fit more than 2^8, or 128.

print(10+20)
print(30 - 5)
print(5 * 6)

//THE SWIFT compiler abides to the mathmatical principles of ASSOCIATIVITY and PRECEDENCE (Think Order of Operations)


print(10 + 2 * 5) //is twenty because 2 * 5 is evaluated first, precedence!

//                         ( ) ^ * / + -

print(30 - 5 - 5) //is twenty because 30 - 5 is evaluated first, associativity!

//                                      LEFT TO RIGHT!

//Like with mathmatics, PARENTHESES can be used to make my intentions explicit.


print((10+2)*5) //this equals 60, because 10+2=12 which is then 12x5=60
print(30-(5-5))//this equals 30 bevause 5 is subtracted out to make zero, thus subtracted by nothing.

//WHAT happens when you divide integers?
print(11/3) // = 3

//How this WORKS: Fractons are truncated, in other words, dropped. So it basically takes the floor of its value... well, the ceiling for negative... basically whatever rounds toward 0.


//REMAINDER OPERATOR %
print(11 / 3) // = 3
print(11 % 3) // = 2
print(-11 % 3) // = -2

//Incrementing, ++ and Decrementing, --         JUST LIKE IN JAVA! :)
var x = 10
x++
print("x has incremented to \(x)")
x--
print("x has decremented to \(x)")

//Combining arithmetic operators and ASSIGNMENT
x += 10 // Is equivalent to: x = x + 10
print("x has had 10 added to it and is now \(x)")

//              +=      -=      *+      /=      %=


//          OVERLFOW OPERATORS
//let y: Int8 = 120
//let z = y+10 //Returns error since 120+10=130 which is out of bounds for Int8 type

//the Swift compiler assumes that z is also an Int8 because as it is declared, it is initialized to a Int8 variable (y) added to 10.
    /// Swift then will check that Z takes in a valid value for its type before it stores that type.

            //Since it does not, this is called a TRAP, and will load an error.

let y: Int8 = 120
let z = y&+10 //this &+ operator turns Int8 into a wrap. At its peak, it will wrap around to the lowest negative values and increment from there. 120+9=-127, ect.

//              &+              &-              &*

//Swift's   TRAPPING is unique. the WRAPPING is what is common in other lanaguages.

let a : Int16 = 200
let b : Int8 = 50
//  let c = a+b         //uh oh! ERROR GALORE.

//          CONVERTING TYPES
let c = a + Int16(b)
//responsibility on the programer to do conversions, not the language. This is also unique with Swift

//          FLOATING POINT NUMBERS
let d1 = 1.1    //Implicit declaration of a double
let d2 : Double = 1.1
let f1 : Float = 100.3

print(10.0 + 11.4)
print(11.0 / 3.0)
print(12.4 % 5.0)
//Operators work all the same

if d1 == d2 {
    print("d1 and d2 are the same!")
}

print("d1 + 0.1 is \(d1 + 0.1)") //prints properly because Swift will approximate when printing.
if d1 + 0.1 == 1.2 {
    print("d1 + 0.1 is equal to 1.2")
}

var negativeOne : Int8
var negOneInBinary : Int = 11111111

var unsignedEquivalent : UInt8
var unsignedEquivalentDecimal = 127









