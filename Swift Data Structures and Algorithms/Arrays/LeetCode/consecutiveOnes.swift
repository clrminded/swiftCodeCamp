func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
	var max: Int = 0
	var count: Int = 0
	
	for num in nums {
		if num == 1 {
			count += 1
			if count > max {
				max = count
			}
		} else {
			count = 0
		}
	}
	return max
}

let testArray: [Int] = [1, 1, 0, 1, 1, 1, 0, 1]

let maxOnes = findMaxConsecutiveOnes(testArray)
print(maxOnes)