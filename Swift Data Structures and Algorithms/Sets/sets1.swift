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

/* ----- Removing an element ------- */
stringSet.remove("four")

if let index = stringSet.firstIndex(of: "one") {
	stringSet.remove(at: index)
}

stringSet.removeFirst()
print(stringSet)

stringSet.removeAll()

/* ------ Set Operations -------- */
// these are operations that compare sets
// the UNION between two sets include all values from both sets
let A: Set = [1, 3, 5, 7]
let B: Set = [0, 2, 4, 6]

print(A.union(B))

// intersection of two sets are elements are 
// in common with both

let C: Set = [1, 2, 3, 4, 5]
let D: Set = [0, 2, 4, 6, 8]
print(C.intersection(D))

// subtracting two sets will include all the
// elements in the first set except for element
// that belongs in the second set

let E: Set = [3, 3, 5, 7, 9, 2]
let F: Set = [3, 7, 2]
print(E.subtracting(F))

var G: Set = [1, 2, 3, 4, 5]
var H: Set = [0, 2, 4, 6, 8]
print(G.symmetricDifference(H))


/* ----- Comparision operators ------- */
let compareA: Set = [2, 4, 6, 8, 10]
let compareB: Set = [0, 3, 7, 6, 8]
let compareC: Set = [10, 8, 4, 2, 6]

if compareA == compareB {
	print("compareA and compareB are equal")
} else {
	print("compareA and compareB are different")
}

if compareA == compareC {
	print("compareA and compareC are equal")
} else {
	print("compareA and compareC are different")
}

/* ------ Set membership ------- */
let memberA: Set = [2, 4, 6, 8, 10]
let memberB: Set = [0, 4, 2, 6, 7, 9, 10, 8]

// returns true because B contains all elements of A
print("isSubset:", memberA.isSubset(of:memberB))

// returns true because B contains all values of A
print("isSuperset:", memberB.isSuperset(of: memberA))

// returns true because B contains all elements
// in A, and both sets are not equal
print("isStrictSubset:", memberA.isStrictSubset(of: memberB))

// returns false because A and B have some
// values in common
print("isDisjointWith:", memberA.isDisjoint(with: memberB))
