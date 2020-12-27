import Foundation

public struct Queue<T> {
	private var data: [T] = []
	
	// enqueue method
	public mutating func enqueue(element: T) {
		data.append(element)
	}
	
	// dequeue method
	public mutating func dequeue() -> T? {
		return data.removeFirst()
	}
	
	// peek method
	public func peek() -> T? {
		return data.first
	}
	
	// clear method
	public mutating func clear() {
		data.removeAll()
	}
	
	// count method
	public var count: Int {
		return data.count
	}
	
	// capacity will be used for isFull method
	public var capacity: Int {
		get {
			return data.capacity
		}
		set {
			data.reserveCapacity(newValue)
		}
	}
	
	// isFull method
	public func isFull() -> Bool {
		return count == data.capacity
	}
	
	// isEmpty method
	public func isEmpty() -> Bool {
		return data.isEmpty
	}
}

var customQueue = Queue<Int>()

customQueue.enqueue(element: 1)
customQueue.enqueue(element: 2)
customQueue.enqueue(element: 3)

print(customQueue)


extension Queue: CustomStringConvertible {
	public var description: String {
		return data.description
	}
}

print(customQueue.dequeue()!)
print(customQueue.peek()!)