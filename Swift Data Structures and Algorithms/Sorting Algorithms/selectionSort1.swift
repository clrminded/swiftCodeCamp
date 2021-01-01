public func selectionSort<inputType: Comparable>(_ inputArray: inout[inputType]) {
	for currentIndex in 0..<(inputArray.count-1) {
		var lowestValueIndex = currentIndex
		for nextIndex in (currentIndex+1)..<inputArray.count {
			if inputArray[lowestValueIndex] > inputArray[nextIndex] {
				lowestValueIndex = nextIndex
			}
		}
		
		if lowestValueIndex != currentIndex {
			inputArray.swapAt(lowestValueIndex, currentIndex)
		}
	}
}

var testArray = [9, 2, 6, 4, 5, 10, 8]
print("Initial array: \(testArray)")
selectionSort(&testArray)
print("SortedArray: \(testArray)")