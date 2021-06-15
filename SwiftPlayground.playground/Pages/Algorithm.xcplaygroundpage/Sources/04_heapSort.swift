import Foundation

func heapInsert(_ array: inout [Int], _ index: Int) {
    var cur = index
    while array[cur] > array[(cur - 1 ) / 2] {
        array.swapAt(cur, (cur - 1 ) / 2)
        cur = (cur - 1) / 2
    }
}


func heapify(_ array: inout [Int], _ index: Int, _ size: Int) {
    var pIndex = index
    var left = pIndex * 2 + 1
    while left < size {
        var largest = (left + 1 < size) && (array[left + 1] > array[left]) ? left + 1 : left
        largest = array[largest] > array[pIndex] ? largest : pIndex
        if largest == pIndex {
            break
        }
        array.swapAt(largest, pIndex)
        pIndex = largest
        left = pIndex * 2 + 1
    }
}

func heapSort(_ array: inout [Int]) -> [Int] {
    if array.count < 2 {
        return array
    }
    
    for i in 0..<array.count {
        heapInsert(&array, i)
    }
    
    var size = array.count - 1
    array.swapAt(0, size)
    while size > 0 {
        heapify(&array, 0, size)
        size -= 1
        array.swapAt(0, size)
    }
    return array
}

public func testHeapSort(testArray: inout [Int]) {
//    var testArray = generateRandomArray(maxSize: 8, maxValue: 10)
    print("HeapSort O: \(testArray)")
    let result = heapSort(&testArray)
    print("HeapSort E: \(result)")
}
