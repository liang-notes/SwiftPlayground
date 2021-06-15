import Foundation

func partition(_ array: inout [Int], _ left: Int, _ right: Int) -> (Int, Int) {
    var cur = left
    var less = left - 1
    var more = right
    while cur < more  {
        if array[cur] < array[right] {
            less += 1
            array.swapAt(less, cur)
            cur += 1
        } else if (array[cur] > array[right]) {
            more -= 1
            array.swapAt(more, cur)
        } else {
            cur += 1
        }
    }
    array.swapAt(more, right)
    return (less + 1, more)
}

private func quickSort(_ array: inout [Int], l: Int, r: Int) {
    if l < r {
        array.swapAt(l + (Int)((Float.random(in: 0..<1))*Float(r - l + 1)), r)
        let res = partition(&array, l, r)
        quickSort(&array, l: l, r: res.0 - 1)
        quickSort(&array, l: res.1 + 1, r: r)
    }
}


func quickSort(_ array: inout [Int]) -> [Int] {
    if array.count < 2 {
        return array
    }
    quickSort(&array, l: 0, r: array.count - 1)
    return array
}

public func testQuickSort(testArray: inout [Int]) {
//    var testArray = generateRandomArray(maxSize: 8, maxValue: 10)
    print("QuickSort O: \(testArray)")
    let result = quickSort(&testArray)
    print("QuickSort E: \(result)")
}
