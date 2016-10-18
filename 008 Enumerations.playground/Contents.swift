
// 枚举语法
enum CompassPoint {
    case north
    case south
    case east
    case west
}
// 注: 与C和OC不同,Swift的枚举成员在被创建的时候不会被赋予默认的整数值

var directionToHead = CompassPoint.west
// 初始化之后再次调用就会直接推断
directionToHead = .north

// 使用Swift语法匹配枚举值

switch directionToHead {
case .north:
    print("north")
case .south:
    print("south")
case .east, .west:
    print("east&west")
}

// 关联值
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("fdahskjfhlasd")
switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("upc")
case .qrCode(let productCode):
    print("qecode: \(productCode)")
}

// 原始值
// 注: 原始值的类型必须相同,他的原始值始终不变
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
}

// 原始值的隐式赋值
// 注: 在使用原始值为整数或者字符串类型的枚举时，不需要显式地为每一个枚举成员设置原始值，Swift 将会自动为你赋值。
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
// 使用枚举成员的rawValue属性可以访问该枚举成员的原始值
let earthsOrder = Planet.earth.rawValue

// 使用原始值初始化枚举实例
let possiblePlanet = Planet(rawValue: 2)

// 递归枚举
// 注: 在枚举成员前加上indirect来表示该成员可递归
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, five)
print(five, four, sum, product)

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))
















