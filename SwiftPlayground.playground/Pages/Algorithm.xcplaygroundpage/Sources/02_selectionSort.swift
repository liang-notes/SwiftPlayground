import Foundation

func selectionSort(_ array: inout [Int]) -> [Int] {
    if array.count < 2 {
        return array
    }
    for i in 0..<array.count {
        var minIndex = i
        for j in (i+1)..<array.count {
            minIndex = array[j] < array[minIndex] ? j : minIndex
        }
        array.swapAt(i, minIndex)
    }
    return array
}

public func testSelectionSort(testArray: inout [Int]) {
//    var testArray = generateRandomArray(maxSize: 8, maxValue: 10)
    print("selectionSort O: \(testArray)")
    let result = selectionSort(&testArray)
    print("selectionSort E: \(result)")
}
