//: [Previous](@previous)

struct Stack<T> {
  var items: [T] = []
  mutating func push(_ item: T) {
    items.append(item)
  }

  mutating func pop() -> T {
    return items.removeLast()
  }
}

extension Stack {
  var lastItem: T? {
    return items.isEmpty ? nil : items[items.count - 1]
  }
}

var stackOfInt = Stack<Int>()
stackOfInt.push(1)
stackOfInt.push(5)
stackOfInt.push(10)

print(stackOfInt.items)
stackOfInt.pop()
print(stackOfInt.items)

print(stackOfInt.lastItem!)

// Type constraint
func findIndex<T: Equatable>(of valueToFind: T, in array: [T]) -> Int? {
  for (index, value) in array.enumerated() {
    if value == valueToFind {
      return index
    }
  }
  return nil
}

let numIndex = findIndex(of: 11, in: [1, 5, 11])
print(numIndex ?? -1)

// Associated types
protocol Container {
  associatedtype Item
  mutating func append(_ item: Item)
  var count: Int { get }
  subscript(index: Int) -> Item { get }
}

struct IntStack<T>: Container {
//  typealias Item = Int
  var items: [T] = []
  mutating func push(_ item: T) {
    items.append(item)
  }

  mutating func pop() -> T {
    return items.removeLast()
  }

  mutating func append(_ item: T) {
    self.push(item)
  }

  var count: Int {
    return items.count
  }

  subscript(index: Int) -> T {
    return items[index]
  }
}

var intStack = IntStack<Int>()
intStack.append(1)
intStack.append(2)
print(intStack[1])
intStack.append(5)
print(intStack.count)

//: [Next](@next)
