import Foundation

public struct Stack<T> {
	private var items: [T] = []
	
	// push method
	mutating func push(element: T) {
		items.append(element)
	}
	
	// pop method
	mutating func pop() -> T? {
		return items.popLast()
	}
	
	// peek method
	func peek() -> T? {
		return items.last
	}
}

var customStack = Stack<Int>()

// using push method
customStack.push(element: 4)
print(customStack)
customStack.push(element: 8)
print(customStack)
customStack.push(element: 12)
print(customStack)

// using peek method
print(customStack.peek()!)

// using pop method
var x = customStack.pop()
print(x!)
x = customStack.pop()
print(x!)

/* ----- Stack extensions ----- */
extension Stack: CustomStringConvertible {
	public var description: String {
		return items.description
	}
}