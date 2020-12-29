class Node<T: Equatable> {
	
	var data: T
	weak var parent: Node?
	var children: [Node] = []
	
	
	init(data: T) {
		self.data = data
	}
	
	func add(child: Node) {
		children.append(child)
		child.parent = self
	}
	
	func printNodeData() -> [String] {
		return ["\(self.data)"] + self.children.flatMap{$0.printNodeData()}.map{"    "+$0}
	}
	
	func printTree() {
		let text = printNodeData().joined(separator: "\n")
		print(text)
	}
	
	// conform the T generic protocol to Equatable
	func search(element: T) -> Node? {
	
		if element == self.data {
			return self
		}
		
		for child in children {
			if let result = child.search(element: element) {
				return result
			}
		}
		return nil
	}
	
}


let drinks = Node(data: "Drinks")
let type1 = Node<String>(data: "Hot")
let type2 = Node<String>(data: "Cold")

drinks.add(child: type1)
drinks.add(child: type2)

type1.add(child: Node(data: "Latte"))

type2.add(child: Node(data: "Cola"))
type2.add(child: Node(data: "Fanta"))

drinks.printTree()

let latte = drinks.search(element: "Latte")

if let result = latte {
	result.printTree()
}
