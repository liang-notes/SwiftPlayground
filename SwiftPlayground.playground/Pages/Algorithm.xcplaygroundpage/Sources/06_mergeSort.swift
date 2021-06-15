import Foundation


func mergeSort(_ array: inout [Int]) -> [Int] {
    if array.count < 2 {
        return array
    }
    mergeSort(&array, 0, array.count - 1)
    return array
}

func merge(_ array: inout [Int], _ l: Int, _ m: Int, _ r: Int) {
    var help = Array.init(repeating: 0, count: (r - l + 1))
    var i = 0
    var p1 = l
    var p2 = m + 1
    while p1 <= m && p2 <= r {
        help[i] = array[p1] < array[p2] ? array[p1] : array[p2]
        i += 1
        p1 += 1
        p2 += 1
    }
    
    while p1 <= m {
        help[i] = array[p1]
        i += 1
        p1 += 1
    }
    
    while p2 <= r {
        help[i] = array[p2]
        i += 1
        p2 += 1
    }
    
    for i in 0..<help.count {
        array[l + i] = help[i]
    }
}

private func mergeSort(_ array: inout [Int], _ l: Int, _ r: Int) {
    if l == r {
        return
    }
    let mid = l + ((r - l) >> 1)
    mergeSort(&array, l, mid)
    mergeSort(&array, mid + 1, r)
    merge(&array, l, mid, r)
}

public func testMergeSort(testArray: inout [Int]) {
//    var testArray = generateRandomArray(maxSize: 8, maxValue: 10)
    print("MergeSort O: \(testArray)")
    let result = mergeSort(&testArray)
    print("MergeSort E: \(result)")
}
