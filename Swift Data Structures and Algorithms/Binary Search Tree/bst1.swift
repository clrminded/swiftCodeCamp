class BTNode<T> {
	var value: T
	var leftChild: BTNode?
	var rightChild: BTNode?
	
	init(value: T, leftChild: BTNode? = nil, rightChild: BTNode? = nil) {
		self.value = value
		self.leftChild = leftChild
		self.rightChild = rightChild
	}
}

class BinarySearchTree<T: Comparable & CustomStringConvertible> {
	private var rootNode: BTNode<T>?
	
	func insert(insertedValue: T) {
		let inNode = BTNode(value: insertedValue)
		if let rootNode = self.rootNode {
			self.insertNode(rootNode: rootNode, inNode: inNode)
		} else {
			self.rootNode = inNode
		}
	}
	
	private func insertNode(rootNode: BTNode<T>, inNode: BTNode<T>) {
		if rootNode.value > inNode.value {
			if let leftChild = rootNode.leftChild {
				self.insertNode(rootNode: leftChild, inNode: inNode)
			} else {
				rootNode.leftChild = inNode
			}
		} else {
			if let rightChild = rootNode.rightChild {
				self.insertNode(rootNode: rightChild, inNode: inNode)
			} else {
				rootNode.rightChild = inNode
			}
		}
	}
	
	func searchValue(sValue: T) {
		self.searchNode(rootNode: self.rootNode, searchValue: sValue)
	}
	
	private func searchNode(rootNode: BTNode<T>?, searchValue: T) {
		guard let rootNode = rootNode else {
			print("The node of \(searchValue) does not exist")
			return
		}
		print("Root Node \(rootNode.value)")
		if searchValue > rootNode.value {
			self.searchNode(rootNode: rootNode.rightChild, searchValue: searchValue)
		} else if searchValue < rootNode.value {
			self.searchNode(rootNode: rootNode.leftChild, searchValue: searchValue)
		} else {
			print("Node found: \(rootNode.value)")
		}
	}
	
	
	
// end of class
}

var binaryST = BinarySearchTree<Int>()

for i in 0..<5 {
	binaryST.insert(insertedValue: i)
}

binaryST.searchValue(sValue: 4)