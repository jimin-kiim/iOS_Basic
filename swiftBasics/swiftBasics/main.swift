//
//  main.swift
//  swiftBasics
//
//  Created by 김지민 on 2022/03/18.
//

/*Use of the semicolon (;) following each statement is fully optional in Swift,
unless you wish to place several independent statements on a single line, in which case the semi-colon is required.*/

import Foundation

// variable
var name :String="Jimin"
//Type annotations ensure that your code is clear about the value stored within your constant or variable.
//In practice, you will rarely need to add type annotations.
//Providing an initial value for a constant or a variable at the point at which it is defined, will almost always be sufficient for Swift to infer which type should be used
name="Jimin Kim"

// constant
let greetingMessage = "Nice to meet you ! 😆"
let first_name = "Jimin", last_name = "Kim"

var age :Int = 22
var height : Float? = 164.4
//Optionals are used in situations in which a value may be absent.
//An optional variable with no default value is automatically set to nil for you
let female :Bool=true

/* constant and variable names : almost any character, including Unicode characters
❌ blank space
❌ mathematical symbols
❌ -
❗️ numbers can appear anywhere within a name except for at the beginning. ...*/


//printing texts
print("Hello"+" World")
//string concatenation
print("my name is",first_name,last_name)
print("I'm \(age) years old")
print(greetingMessage)
print("Female?", female ? "y":"n")
//ternary operator
height != nil ? print(height ?? "0cm") : print("NULL")

print("==========================")
var num1=7
let num2=2
print(num1, num2)
print("addition",num1+num2)
print("subtraction",num1-num2)
print("multiplication",num1*num2)
print("division",num1/num2)
print("modulo",num1%num2)
num1+=1
print("increment",num1)
print("\(num1)>\(num2)?",num1>num2)
print("\(num1)=\(num2)?",num1==num2)
print("\(num1)!=\(num2)?",num1 != num2)
print("\(num1)<=\(num2)?",num1<=num2)

print("==========================")
/*range operators
 1 . closed rangeoperator (a...b)
 2. half-open rangeoperator (a..<b)
 */

/* logical operators
 NOT !
 AND &&
 OR ||
 */
var distance=3

if distance > 5 {
    print("too far !")
}else {
    print("not too far")
}

switch distance {
    case 0 :
        print("not a valid distance")
    case 1,2,3,4 :
        print("not too far")
default :
    print("too far")
}
//Every switch statement must be exhaustive, i.e. take every possible value into consideration.
//Swift doesn't require break statements
// because it doesn't fallthrough automatically like in C.
// if I want 'fallthrough', then put it. before the next case.

let point = (2,4)
switch point {
case let (x,y) where x == y:
    print("(\(x),\(y)) is on the line y=x")
case let (x,y) where x == -y:
    print("(\(x),\(y)) is on the line y=-x")
case let (x,y):
    print("(\(x),\(y)) is just some arbitrary point")
}
print("==========================")
var a = 0
let b = 6

while a<b {
    print(a)
    a+=1
}

a = 0

repeat {
    print(a)
    a+=1
}while a<b

a = 0

for _ in 0...5 {
    print(a)
    a+=1
}
/*control transfer
 continue, break, fallthrough, return
 
 continue : stop the loop & restarts at the beginning of its next cycle.
 break : immediately end the execution of an entire control flow statement.
 */
var num = 0
while num < 10 {
    if num % 2 == 0 {
        continue
        // skipping even numbers to print.
    }
    print(num)
}

var c = 7
var d = 10
while d > 0 {
    if( d < c) {
        break
    }
    a-=1
    print(a)
}
