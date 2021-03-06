/* ----- Node ------ */
public class Node<nodeType> {
	public var value: nodeType
	public var next: Node?
	
	public init(value: nodeType) {
		self.value = value
	}
}

extension Node: CustomStringConvertible {
	public var description: String {
		guard let next = next else {
			return "\(value)"
		}
		return "\(value) -> " + String(describing: next) + " "
	}
}

/* ----- Singly Linked List ------ */
public class SinglyLinkedList<listType> {
	

	public var head: Node<listType>?
	public var tail: Node<listType>?
	
	// adding values
	public func append(value: listType) {
		let newNode = Node(value: value)
		if var h = head {
			while h.next != nil {
				h = h.next!
			}
			h.next = newNode
		}
		else {
			head = newNode
		}
	}
	
	// insert value at a given index
	func insert(value: listType, index: Int) {
		let newNode = Node(value: value)
		
		if (index == 0) {
			newNode.next = head
			head = newNode
		} else {
			var prev = head
			var cur = head
			
			for _ in 0..<index {
				prev = cur
				cur = cur?.next
			}
			
			newNode.next = prev?.next
			prev?.next = newNode
		}
	}
	
	public func removeLast() -> listType? {
		if let h = head {
			if h.next == nil {
				defer {
					head = nil
					tail = nil
				}
				return h.value
			}
			
			var prev = h
			var curr = h
			while let next = curr.next {
				prev = curr
				curr = next
			}
			prev.next = nil
			tail = prev
			return curr.value
		} else {
			return nil
		}
	}
	
	
	public var isEmpty: Bool {
		return head == nil
	}
}

extension SinglyLinkedList: CustomStringConvertible {
	public var description: String {
		guard let head = head 
		else {
			return "Empty list"
		}
		return String(describing: head)
	}
}


var newList = SinglyLinkedList<Int>()

newList.append(value: 2)
newList.append(value: 4)
newList.append(value: 6)
newList.append(value: 8)

newList.insert(value: 1, index: 0)
newList.insert(value: 3, index: 2)
newList.insert(value: 5, index: 4)

print(newList)

newList.removeLast()
print(newList)

