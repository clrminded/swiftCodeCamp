/* -------- Creating Array --------- */
// create an array using full array syntax
var intArray1 = Array<Int>()

// create an array using shorthand syntax
intArray1 = [Int]()

// use literal array declaration
var intLiteralArray: [Int] = [1, 2, 3]

// use shorthand literal declaration
intLiteralArray = [1, 2, 3]

// create an array with a default value
intLiteralArray = [Int](repeating: 0, count: 5)


print(intLiteralArray)

/* -------- Retreiving elements ------ */
var myIntArray = [1,2,3,4,5]
var aNumber = myIntArray[2]
print(aNumber)

for element in myIntArray {
	print(element)
}

/* ------ Adding elements ------- */
myIntArray.append(11)
print(myIntArray)

/* ------- Removing elements ------ */
/* there are 4 ways to remove elements:
.removeLast() // remove element at end
.removeFirst() // remove element in front
.remove(at: ) // remove at specified index
.removeAll() // remove all elements */
myIntArray.removeLast()
print(myIntArray)

myIntArray.removeFirst()
print(myIntArray)

myIntArray.remove(at: 2)
print(myIntArray)

myIntArray.removeAll()
print(myIntArray)

/* ------ Built-in array functions ----- */
myIntArray = [1,2,3,4,5]
// check to see if array is empty
print(myIntArray.isEmpty)
// return first element in array (optional)
print(myIntArray.first)
// return last element in array (optional)
print(myIntArray.last)

// reversed returns a new collection with
// the same values
let reversedIntArray = Array(myIntArray.reversed())
print(reversedIntArray)
// reverse returns the original array
myIntArray.reverse()
print(myIntArray)

// count the number of items in array
print(myIntArray.count)

/* important thing to remember is myIntArray[-1] does not exsist and will throw error, but myIntArray[myIntArray.count - 1] will work and return the last element */
print(myIntArray[myIntArray.count - 1])

/* Summary is these are the basics of pretty much how arrays work, what we can do with them and the built in functionality of them */