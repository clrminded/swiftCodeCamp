/* In unordered collections, like dictionaries and sets, they must conform to the Hashable protocol.
- meaning it has to have a hashValue property
- sets are unordered and hashValue is used to access the elements of sets
- searching an array is O(n)
- searching a set is O(1) constant, fast
*/
 
 
// full syntax declaration
var intSet = Set<Int>()

// initialize a set from an array literal
var stringSet: Set = ["one", "two", "three"]

print("unordered set:")
for num in stringSet {
	print(num)
}

// the sorted() on strings is alphabetical!
print("\nordered set:")
for num in stringSet.sorted() {
	print(num)
}

// check if element exists
if stringSet.contains("one") {
	print("\nelement found\n")
} else {
	print("\nelement not found\n")
}


/* ------- Adding an element -------- */
stringSet.insert("four")
print(stringSet)

