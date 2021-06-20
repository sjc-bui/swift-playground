//: [Previous](@previous)

import Foundation
import UIKit

let digitNames = [
  0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
  5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [201]

let string = numbers.map { (num) -> String in
  var num = num
  var output = ""
  repeat {
    output = digitNames[num % 10]! + output
    num = num / 10
  } while num > 0
  return output
}

print(string)
//: [Next](@next)
