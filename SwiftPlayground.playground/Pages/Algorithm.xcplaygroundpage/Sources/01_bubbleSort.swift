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

public func testBubbleSort() {
    var testArray = generateRandomArray(maxSize: 100, maxValue: 10)
    print("O: \(testArray)")
    let result = bubbleSort(&testArray)
    print("E: \(result)")
}

