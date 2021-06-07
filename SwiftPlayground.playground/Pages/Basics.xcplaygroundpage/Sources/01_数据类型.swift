import Foundation

// 布尔类型
// 布尔类型值在OC中是0和1，
// Swift中是true和false（和大部分语言一样）
let bool = true

// 字符串类型
let string = "hello world"

// 字符类型
let character: Character = "🌎"

// 整数类型
let intDecimal = 20
let intBinary = 0b10001     //二进制   1*2^4 + 1
let intOctal = 0o21         //八进制   2*8*2^1 + 1
let intHexDecimal = 0x11    //十六进制 16*1^1 + 1
let num = 100_0000
let max = Int.max
let min = Int.min

// 浮点数类型
let doubleDecimal = 125.0
let doubleDecimal0 = 1.25e-2
let doubleHexDecimal1 = 0xFp2  //十六进制 15*2^2
let doubleHexDecimal2 = 0xFp-2 //十六进制 15*2^-2
let floatNum = 1_000_123.123

// 数组
let array = [1, 2, 3, 4, 5]

// 字典
let dictionary = ["name": "swift", "age": "5"]
let dictionary1: [String : Any] = ["name": "swift", "age": 5]


public func testPrint() {
    print("布尔类型: \(bool)")
    print("字符串类型: \(string)")
    print("字符类型: \(character)")
    print("整型: \(intDecimal)")
    print("二进制整型: \(intBinary)")
    print("八进制整型: \(intOctal)")
    print("十六进制整型: \(intHexDecimal)")
    print("特殊整型: \(num)")
}
