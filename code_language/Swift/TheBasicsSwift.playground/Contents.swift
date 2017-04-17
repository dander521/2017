//: Playground - noun: a place where people can play

import UIKit

// The Basics

/****************************************************************/
// 常量和变量

let maximum = 10
var currentNum = 0

var x = 0.0, y = 0.0, z = 0.0

/****************************************************************/
// 类型标注

var welcomeMessage: String

welcomeMessage = "hello"

var red, green, blue: Double

/****************************************************************/
// 常量和变量命名

let pai = 3.14159
let 你好 = "ni hao shi jie"
let 🐶🐮 = "dogcow"

/****************************************************************/
// 输出常量和变量

print(welcomeMessage)
print("\(welcomeMessage) Roger Chen")

/****************************************************************/
// 注释

//
/*
 这是一个
 多行
 */

/*
 /* 嵌套 */
 */

/****************************************************************/
// 分号

let cat = "123"; print(cat)

/****************************************************************/
// 整数

let minValue = UInt8.min
let maxValue = UInt8.max

Int.max
UInt.max

/****************************************************************/
// 浮点数

var d: Double
var f: Float

/****************************************************************/
// 类型安全和类型推断

let meaningOfLife = 52
let pi = 3.1415926
let anotherPi = 3 + 0.14159

/****************************************************************/
// 数值型字面量

/*
 一个十进制数，没有前缀
 一个二进制数，前缀是0b
 一个八进制数，前缀是0o
 一个十六进制数，前缀是0x
 */

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

/*
 如果一个十六进制数的指数为exp，那这个数相当于基数和2^exp的乘积：
 
 0xFp2 表示 15 × 2^2，等于 60.0。
 0xFp-2 表示 15 × 2^-2，等于 3.75。
 */

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

/****************************************************************/
// 数值型类型转换

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)


/****************************************************************/
// 类型别名

typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min

/****************************************************************/
// 布尔值

let a = true
let b = false

if a {
    
} else {
    
}

/****************************************************************/
// 元组

let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error

print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

let (justTheStatusCode, _) = http404Error

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")


/****************************************************************/
// 可选类型
// nil

var serverResponseCode: Int? = 404

serverResponseCode = nil

/****************************************************************/
// if 语句以及强制解析


var convertedNumber: String? = "hah"

if convertedNumber != nil {
    print("");
}

// 可选绑定

var possibleNumber: String = "5"

if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    print("\'\(possibleNumber)\' could not be converted to an integer")
}


/****************************************************************/
// 隐式解析可选类型
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 需要惊叹号来获取值

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString  // 不需要感叹号

/****************************************************************/
// 断言

/*
 整数类型的下标索引被传入一个自定义下标实现，但是下标索引值可能太小或者太大。
 需要给函数传入一个值，但是非法的值可能导致函数不能正常执行。
 一个可选值现在是 nil，但是后面的代码运行需要一个非 nil 值。
 */

let age = 3
assert(age >= 0, "A person's age cannot be less than zero")



















