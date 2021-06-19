//: [Previous](@previous)

import UIKit

extension Int {
  func repetitions(completion: (Int) -> Void) {
    for i in 0..<self {
      completion(i)
    }
  }
}

3.repetitions { i in
  print("Done - \(i)")
}

//: [Next](@next)
