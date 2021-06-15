import Foundation

func insertionSort(_ array: inout [Int]) -> [Int] {
    if array.count < 2 {
        return array
    }
    for i in 1..<array.count {
        for j in (0..<i).reversed() {
            if array[j] > array[j+1] {
                array.swapAt(j, j+1)
            }
        }
    }
    return array
}

public func testInsertionSort(testArray: inout [Int]) {
//    var testArray = generateRandomArray(maxSize: 8, maxValue: 10)
    print("InsertionSort O: \(testArray)")
    let result = insertionSort(&testArray)
    print("InsertionSort E: \(result)")
}
