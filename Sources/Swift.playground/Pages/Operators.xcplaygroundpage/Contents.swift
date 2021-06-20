//: [Previous](@previous)

import UIKit

let values = [1.0, 5.0, 8.0, 9.0]

var results: [Double] = []
for value in values {
  results.append(value * value)
}
print(results) // [1.0, 25.0, 64.0, 81.0]

// Map
let results2 = values.map { $0 * 2 }
print(results2) // [2.0, 10.0, 16.0, 18.0]

// Filter
let arr = [1, 2, 4, 5, 7, 10]
let results3 = arr.filter { $0 % 2 == 0}
print(results3) // [2, 4, 10]

// Reduce
let items = [2, 4]
let results4 = items.reduce(4, +)
print(results4) // 10

let alpha = ["abc", "def", "ghi"]
let results5 = alpha.reduce(" ", +)
print(results5) //  abcdefghi

// Flatmap
let arr2 = [[0, 1, 2], [4, 5], [6, 7, 8, 9]]
let results6 = arr2.flatMap { $0 }
print(results6) // [0, 1, 2, 4, 5, 6, 7, 8, 9]

// CompactMap
let keys: [String?] = ["Tom", nil, "Peter", nil, "Harry"]
let results7 = keys.compactMap { $0 }
let results8 = keys.compactMap { $0?.count }
print(results7)
print(results8)

// Chaining
let marks = [5, 6, 7, 8, 9, 10]
let results9 = marks.filter{ $0 > 7 }.reduce(0, +)
print(results9) // 27

//: [Next](@next)
