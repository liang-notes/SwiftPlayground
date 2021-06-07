import Foundation


public func generateRandomArray(maxSize: Int, maxValue: Int) -> [Int] {
    // arc4random 产生一个[0, 2^32)区间的随机数(注意是左闭右开区间)
    // arc4random 函数的返回类型是UInt32
    
    // 生成一个指定范围内的整型随机数，则使用arc4random() % upper_bound的方式，
    // 其中upper_bound指定的是上边界
    // 在upper_bound不是2的幂次方时，会产生一个所谓模偏差的问题
    
    // arc4random_uniform(upper_bound)
    // arc4random_uniform，它接受一个UInt32类型的参数
    // 指定随机数区间的上边界upper_bound，该函数生成的随机数范围是[0, upper_bound)

    //let a = Int.random(in: 10..<20)
    var array = [Int](repeating: 0, count: Int((Float)(maxSize + 1) * Float.random(in: 0..<1)))
    for i in 0..<array.count {
        array[i] = Int((Float)(maxValue + 1) * Float.random(in: 0..<1)) - Int((Float)(maxValue) * Float.random(in: 0..<1))
    }
    return array
}

func copyArray(array: [Int]) -> [Int]? {
    var res = [Int](repeating: 0, count: array.count)
    for i in 0..<array.count {
        res[i] = array[i]
    }
    return res
}
