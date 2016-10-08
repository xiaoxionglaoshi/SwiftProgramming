
// 字符串字面量
let someString = "some string literal value"

// 初始化空字符串
var emptyString = ""
var anotherEmptyString = String()

// 字符串可变性
var variableString = "hello"
variableString += " swift"

// 字符串值类型
for character in variableString.characters {
    print(character)
}

// 字符集合转字符串
let strCharacters: [Character] = ["h", "e", "l", "l", "o"]
let str = String(strCharacters)

// 字符串索引
let greeting = "guten tag"
greeting[greeting.startIndex]
greeting[greeting.index(after: greeting.startIndex)]
greeting[greeting.index(greeting.endIndex, offsetBy: -2)]

for index in greeting.characters.indices {
    print(greeting[index], terminator: ",")
}

// 插入和删除
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " swift".characters, at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.startIndex)
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)

// 前缀/后缀判断
let messageStr = "hello swift"
if messageStr.hasPrefix("he") {
    print("存在he的前缀")
}
if messageStr.hasSuffix("ft") {
    print("存在ft的后缀")
}

