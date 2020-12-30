public class TrieNode<K: Hashable> {
	var value: K?
	weak var parent: TrieNode?
	var children: [K: TrieNode] = [:]
	var isFinal = false
	
	init(value: K? = nil, parent: TrieNode? = nil) {
		self.value = value
		self.parent = parent
	}
}

public class Trie {
	private let rootNode: TrieNode<Character>
	
	init() {
		rootNode = TrieNode<Character>()
	}
}