//: [Previous](@previous)

import UIKit

enum Planet: Int {
  
  case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune

  static subscript(index: Int) -> Planet {
    return Planet(rawValue: index)!
  }
}

let result = Planet[3]
print(result) // earth

//: [Next](@next)
