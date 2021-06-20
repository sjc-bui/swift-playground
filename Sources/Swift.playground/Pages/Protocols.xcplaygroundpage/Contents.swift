//: [Previous](@previous)

protocol Togglable {
  mutating func toggle()
}

enum OnOffSwitch: Togglable {
  case on, off
  mutating func toggle() {
    switch self {
      case .on:
        self = .off
      case .off:
        self = .on
    }
  }
}

var state = OnOffSwitch.on
state.toggle()
print(state)

//: [Next](@next)
