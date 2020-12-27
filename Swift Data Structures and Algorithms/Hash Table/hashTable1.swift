class HashElement<K: Hashable, V> {
	var key = K
	var value = V?
	
	init(key: K, value: V?) {
		self.key = key
		self.value = value
	}
}

class HashTable<K: Hashable, V> {
	typealias Bucket = [HashElement<K, V>]
	var buckets: [Bucket]
	
	init(capacity: Int) {
		assert(capacity > 0)
		buckets = Array<Bucket>(repeatElement([], count: capacity))
	}
}

func index(for: key: K) -> Int {
	var divisor: Int = 0
	for key in String(describing: key).unicodeScalars {
		divisor += abs(Int(key.value.hashValue))
	}
	return abs(divisor) % buckets.count
}

func retrieveValue(for: key: K) -> V? {
	let index = self.index(for: key)
	for element in buckets[index] {
		if element.key == key {
			return element.value
		}
	}
	return nil
}


