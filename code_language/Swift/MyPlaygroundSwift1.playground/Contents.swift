
import UIKit

var str = "Hello, playground"

/**********************************************************************/

print("Hello, world!")

var myVariable = 42

myVariable = 50

let myConstant = 42

// implicit 含蓄的；暗示的；盲从的
let implicitInteger = 70
let implicitDouble = 70.0

// explicit 明确的；清楚的；直率的；详述的
let explicitDouble: Double = 70.0

let label = "The width is"
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 6
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

/**********************************************************************/

// catfish 鲶鱼
// tulips 郁金香
// blue paint 蓝漆
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

// occupation 职业；占有；消遣；占有期
var occupation = [
    "Roger" : "Programmer",
    "Eva" : "Captain"
]

occupation["Walle"] = "Public Relations"

let emptyArray = [String]()

let emptyDictionary = [String : Float]()

/**********************************************************************/

let individualScores = [75, 22, 90, 102, 5]

var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

/**********************************************************************/

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "Roger Chen"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

/**********************************************************************/

// informal: 非正式的；不拘礼节的；随便的；通俗的；日常使用的

let nickName: String? = nil
let fullName: String = "Roger Chen"
let informalGreeting = "Hi \(nickName ?? fullName)"

/**********************************************************************/

// spicy 辛辣的；香的，多香料的；下流的
// celery 芹菜
// cucumber 黄瓜；胡瓜
// watercress 豆瓣菜；西洋菜
// tea sandwich 三明治
// raisins 葡萄干，提子干

let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

/**********************************************************************/

// Prime 主要的；最好的；基本的
// Fibonacci 斐波纳契（一种整数数列）
// Square 平方的；正方形的；直角的；正直的

let interestingNumbers = [
    "Prime" : [2, 3, 5, 7, 11, 13],
    "Fibonacci" : [1, 1, 3, 5, 8],
    "Square" : [1, 4, 9, 16, 25],
]

var largest = 0

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)

/**********************************************************************/

var n = 2
while n < 20 {
    n = n * 2
}

print(n)

var m = 2

repeat {
    m = m * 2
} while m < 10

print(m)

var total = 0
for i in 0..<4 {
    total += i
}

print(total)

/**********************************************************************/

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}

greet(name: "Bod", day: "Tuesday")

//  statistics 统计；统计学；[统计] 统计资料

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5,3,99,100,160])
print(statistics.sum)
print(statistics.2)

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    
    return sum
}

sumOf()
sumOf(numbers: 1, 2, 3)


func returnFifteen() -> Int {
    var y = 10
    
    func add() {
        y += 5
    }
    
    add()
    
    return y
}

returnFifteen()

/**********************************************************************/

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)


/**********************************************************************/

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

let sortNumbers = numbers.sorted()
print(sortNumbers)

/**********************************************************************/

class Shape {
    var numeberOfSides = 0
    
    func simpleDescription() -> String {
        return "A shape with \(numeberOfSides) sides."
    }
}

var shape = Shape()
shape.numeberOfSides = 5
var shapeDes = shape.simpleDescription()

/**********************************************************************/

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

/**********************************************************************/

// Triangle 三角（形）；三角关系；三角形之物；三人一组
// Equilateral 等边的；等面的
// perimeter 周长；周界；[眼科] 视野计

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
    
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

/**********************************************************************/

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        triangle = EquilateralTriangle(sideLength: size, name: name)
        square = Square(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)

triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.square.sideLength)

/**********************************************************************/

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

/**********************************************************************/

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDes() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue

if let convertedRank = Rank(rawValue: 3) {
    let threeDes = convertedRank.simpleDes()
}

/**********************************************************************/

// Spades 黑桃纸牌
// Hearts 红心
// Diamonds 方块
// Clubs 梅花

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

/**********************************************************************/

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDes()) of \(suit.simpleDescription())"
    }
    
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDes = threeOfSpades.simpleDescription()

/**********************************************************************/

enum ServerResponse {
    case Result(String, String)
    case Failure(String)
}

let success = ServerResponse.Result("6 am", "8 pm")
let failure = ServerResponse.Failure("Out of cheese")

switch success {
case let .Result(sunrise, sunset):
    let serverResponde = "Sunrise is at \(sunrise) and sunset is at \(sunset)"
case let .Failure(message):
    print("Failure... \(message)")
}

/**********************************************************************/

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "Now 100% adjust"
    }
}

var a = SimpleClass()
a.adjust()
let aDes = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure."
    mutating func adjust() {
        simpleDescription += "(adjust)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDes = b.simpleDescription

enum SimpleEnum: ExampleProtocol {
    
    case First(String), Second(String), Third(String)
    
    internal var simpleDescription: String {
        get {
            return "SimpleEnum"
        }
        
        set {
            simpleDescription = newValue
        }
    }


    mutating internal func adjust() {
        simpleDescription += "(adjust enum)"
    }
}


/**********************************************************************/

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)

/**********************************************************************/

enum PrinterError: Error {
    case OutOfPaper
    case NoToner
    case OnFire
}

/**********************************************************************/

func sendToPrinter(printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.NoToner
    }
    
    return "Job sent"
}

do {
    let printerResponse = try sendToPrinter(printerName: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}

do {
    let printerResponse = try sendToPrinter(printerName: "Gutenberg")
    print(printerResponse)
} catch PrinterError.OnFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

let printerSuccess = try? sendToPrinter(printerName: "Mergenthaler")
// 异常
let printerFailure = try? sendToPrinter(printerName: "Never Has Toner")

/**********************************************************************/

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(itemName: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(itemName)
    return result
}
fridgeContains(itemName: "banana")
print(fridgeIsOpen)

/**********************************************************************/


func repeatItem<Item>(item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
repeatItem(item: "knock", numberOfTimes:4)

/**********************************************************************/


























