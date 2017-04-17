//: Playground - noun: a place where people can play

import UIKit

enum SomeEnumeration {
    //
}

enum CompassPoint {
    case North
    case South
    case East
    case West
}

enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var directionToHead = CompassPoint.West

directionToHead = .East

switch directionToHead {
case .North:
    print("North")
case .South:
    print("South")
case .West:
    print("West")
case .East:
    print("East")
}

enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

var productBarcode = Barcode.UPCA(8, 85909, 51226, 3)

productBarcode = Barcode.QRCode("ABCDRFGH")

switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPC-A:\(numberSystem),\(manufacturer),\(product),\(check)")
case .QRCode(let productCode):
    print("QR code: \(productCode)")
}

productBarcode = Barcode.UPCA(8, 85909, 51226, 3)

switch productBarcode {
case let .UPCA(numberSystem, manufacturer, product, check):
    print("UPC-A:\(numberSystem),\(manufacturer),\(product),\(check)")
case let .QRCode(productCode):
    print("QR code: \(productCode)")
}


// 原始值

enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}

enum Planet1: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

let earthsOrder = Planet1.Earth.rawValue
// earthsOrder 值为 3

enum CompassPoint1: String {
    case North, South, East, West
}

let sunsetDirection = CompassPoint1.West.rawValue

// 使用原始值初始化枚举实例

let possiblePlanet = Planet1(rawValue: 7)

let positionToFind = 9
if let somePlanet = Planet1(rawValue: positionToFind) {
    switch somePlanet {
    case .Earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}


// 递归枚举

indirect enum ArithmeticExpression {
    case Number(Int)
    case Addition(ArithmeticExpression, ArithmeticExpression)
    case Multiplication(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case .Number(let value):
        return value
    case .Addition(let left, let right):
        return evaluate(expression: left) + evaluate(expression: right)
    case .Multiplication(let left, let right):
        return evaluate(expression: left) * evaluate(expression: right)
    }
}

let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let sum = ArithmeticExpression.Addition(five, four)
let product = ArithmeticExpression.Multiplication(sum, ArithmeticExpression.Number(2))

print(evaluate(expression: product))


