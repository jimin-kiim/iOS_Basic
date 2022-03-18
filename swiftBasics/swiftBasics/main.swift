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
