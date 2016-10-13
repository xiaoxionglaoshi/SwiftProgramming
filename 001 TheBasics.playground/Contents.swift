
// 常量:let
let x = 10
// 变量: var
var y = 5
y = 20

// 类型标注
var str: String
str = "hello swift"
// 也可以单行定义多个变量
var red, green, blue: Double

// 整数: Swift提供8 16 32 64位有符号和无符号整数类型
let minValue = UInt8.min
let maxValue = UInt8.max
// 除非必要, 一般Int类型就行

// 浮点数: Double表示64位浮点数 Float表示32为浮点数,Double精确度至少15为数字,Float只有6位数字

// 整数和浮点数转换
let a = 3
let b = 0.1415
let pi = Double(a) + b

// 类型别名
typealias audioSample = UInt8
var maxAudioSample = audioSample.max

// 元组
let httpError = (404, "Not Found")
httpError.0
let httpSuccess = (code: 200, message: "OK")
httpSuccess.message

// 可选类型
let possibleNumber = "123"
let possibleNumber2 = "ddd"
let convertedNumber = Int(possibleNumber)
let convertedNumber2 = Int(possibleNumber2)
print(convertedNumber)
print(convertedNumber2)
var surveyAnswer: String? // 没有初始值的可选变量自动设置nil

// 可选类型解包
if let constantName = convertedNumber {
    print(constantName)
}

// 断言
let age = 13
assert(age < 16, "young children")



