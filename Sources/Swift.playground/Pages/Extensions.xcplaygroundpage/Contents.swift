//: [Previous](@previous)

import UIKit

extension Int {
  func repetitions(completion: (Int) -> Void) {
    for i in 0..<self {
      completion(i)
    }
  }

  /** Calculate square of it self.*/
  mutating func square() {
    self = self * self
  }

  enum Kind {
    case negative, zero, positive
  }

  var kind: Kind {
    switch self {
      case 0:
        return .zero
      case let x where x > 0:
        return .positive
      default:
        return .negative
    }
  }
}

3.repetitions { i in
  print("Done - \(i)")
}

var num = 5
num.square()
print(num)

print(0.kind)

//: [Next](@next)
