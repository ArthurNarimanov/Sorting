import UIKit
// func for random array
func randomIntArray(count: Int, random: Int) -> Array<Int>{
	var array = [Int](repeating: 0, count: count)
	for index in 0 ..< array.count{
		let randomInt = Int.random(in: 0...random)
		array[index] = randomInt
	}
	return array
}
var arr = randomIntArray(count: 100, random: 50)
print(arr)

// Quick Sort
func quickSort<T: Comparable> ( array: inout [T], start: Int, end: Int) {
	
	if end - start < 2 {
		return
	}
	
	let mid = array[start + (end - start) / 2]
	var low = start
	var high = end - 1
	
	while (low <= high) {
		if array[low] < mid {
			low += 1
			continue
		}
		
		if array[high] > mid {
			high -= 1
			continue
		}
		
		let temp = array[low]
		array[low] = array[high]
		array[high] = temp
		
		low += 1
		high -= 1
	}
	quickSort(array: &array, start: start, end: high + 1)
	quickSort(array: &array, start: high + 1, end: end)
	
}
quickSort(array: &arr, start: 0, end: arr.count)
print(arr)
