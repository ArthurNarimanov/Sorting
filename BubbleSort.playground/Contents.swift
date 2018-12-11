import Foundation

// func for random array
// MARK: - Random func. 
func randomIntArray(count: Int, random: Int) -> Array<Int>{
	var array = [Int](repeating: 0, count: count)
	for index in 0 ..< array.count{
		let randomInt = Int.random(in: 0...random)
		array[index] = randomInt
	}
	return array
}
var arr = randomIntArray(count: 10, random: 10)
print(arr)

//MARK: - Bubble Sort

func bubbleSort(list: inout [Int]) -> [Int] {
	
	let n = list.count - 1
	
	for i in 0...n {
		for j in 0...n {
			if list[i] < list[j] {
				let temp = list[i]
				list[i] = list[j]
				list[j] = temp
			}
		}
	}
	return list
}
bubbleSort(list: &arr)
print(bubbleSort(list: &arr))
