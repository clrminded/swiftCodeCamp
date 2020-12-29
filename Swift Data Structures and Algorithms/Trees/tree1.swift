class Node<T> {
	
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
