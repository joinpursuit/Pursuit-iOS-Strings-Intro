//
//  main.swift
//  IntroToStrings
//
//  Created by Alex Paul on 10/9/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

// String - is a collection of characters

// concatenation - adding
let firstName = "John"
let lastName = "Appleseed"
// use a variable full name to concatenate first name and second name
let fullName = firstName + " " + lastName
print("the person's fullname is \(fullName)")

// string interpolation
let year = 2018
// use string interpolation to print out the year 2018
print("the current year is \(year)")

// e.g string literal
let name = "Eli"

// initialization - set a default value
var date = "October 9th, 2018" // string literal
print(date)

// string formatting
let someString = String(format: "%.2f", 10.345)
print("using string formating to print 2 decimal places \(someString)")

// test for empty string
let emptyString = ""

// using the ternary operator ?:
emptyString.isEmpty ? print("is empty - using ternary operator") : print("NOT empty - using ternary operator")

// alternate using if/else
if emptyString.isEmpty { // built in function
  print("is empty - using if/else")
} else {
  print("NOT empty - using if/else")
}

// comparing strings
let str1 = "Pursuit"
let str2 = "C4Q"
str1 == str2 ? print("you're in both cohorts") : print("pursuit to the dream")


// string mutability
let homePlanet = "earth" // immutable - cannot change

var codingExperience = 0 // mutable - means can change
codingExperience = 10

// casting
let stringExperience = String(codingExperience)
print("I have \(stringExperience) in coding")

// value type
let movie = "Toy Story"
var nextMovie = movie // mutable
nextMovie += " 2" // if nextMovie was a (class type) it would change the movie's value
print("movie is \(movie) and nextMovie is \(nextMovie)")

// interating through a string
var iOS = "iOS is awesome!"
for letter in iOS { // using a for-in loop to print out every character of iOS String
  // print() - defaults to printing on seperate line because of new line character
  
  print(letter, terminator:"|") // does not default to a new line
}

print("")
print("==============================================")

// count characters in a String
// count is a property on a collection type - counts number of items in collection
print("there are \(iOS.count) characters in the string")

// drop the last character in a string
print("dropping the last character \(iOS.dropLast())")
print("will it drop the last character \(iOS)")

// it you want to get the modified string after using dropLast
iOS = String(iOS.dropLast())
print("modified iOS string is \(iOS)")

// reverse string
let greeting = "hello"
var reverse = String(greeting.reversed())
print("reverse greeting is \(reverse)")

// check if a string is a palindrome
let testPalindromeStr = "Racecar".lowercased()
let isPalindrome = String(testPalindromeStr.reversed())
if testPalindromeStr == isPalindrome {
  print("is a palindrome")
} else {
  print("NOT a palindrome")
}

// comparing unicode scalar vs string literal
let unicodeSpace = "\u{20}"
let stringLiteralSpace = " "
unicodeSpace == stringLiteralSpace ? print("equal") : print("NOT equal")

// U+1F40D is snake
let snake = "\u{1F40D}\u{1F61C}" // unicode scalar
for _ in 0...10 {
  print(snake,terminator:"")
}


// using 
