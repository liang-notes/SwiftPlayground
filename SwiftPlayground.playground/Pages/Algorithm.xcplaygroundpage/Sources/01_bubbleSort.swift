import Foundation

func bubbleSort(_ array: inout [Int]) -> [Int] {
    if array.count < 2 {
        return array;
    }
    for end in (0..<array.count).reversed() {
        for i in 0..<end {
            if array[i] > array[i+1] {
                array.swapAt(i, i+1)
            }
        }
    }
    return array;
}

public func testBubbleSort(testArray: inout [Int]) {
//    var testArray = generateRandomArray(maxSize: 10, maxValue: 10)
    print("BubbleSort O: \(testArray)")
    let result = bubbleSort(&testArray)
    print("BubbleSort E: \(result)")
}

