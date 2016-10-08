
// For-In循环
for index in 1...5 {
    print(index)
}

// 数组遍历
let programmingArray = ["swift", "java", "php"]
for (index, value) in programmingArray.enumerated() {
    print("hello \(value) at \(index)")
}

// 字典遍历
let programmingDict = ["ios": "Swift", "android": "Java"]
for (key, value) in programmingDict {
    print("key: \(key), value: \(value)")
}

// While循环
var count = 10
while count > 0 {
    count -= 1
    print(count)
}

// Switch
let someCharacter: Character = "A"
switch someCharacter {
    case "A":
        print("A")
    case "B", "C":
        print("B, C")
    default:
        print("default")
}
// 元组
let somePoint = (1, 2)
switch somePoint {
    case (0, 0):
        print("0, 0")
    case (_, 1):
        print("_, 2")
    case (0...1, 1...4):
        print("1...4")
    default:
        print("default")
}

// continue, fallthrough
let aa = "swift"
var bb = ""
var cc = ""
for character in aa.characters {
    switch character {
    case "s", "f":
        continue // 有没有都行
//        fallthrough // 贯穿
    default:
        bb.append(character)
    }
}
print(bb)

// 带标签的语句
swiftLoop: for character in aa.characters {
    switch character {
    case "s", "f":
        continue
    case "i":
        break swiftLoop
    default:
        cc.append(character)
    }
}

print(cc)

//检测API可用性
if #available(iOS 9, *) {
    print("ios9 is available")
} else {
    print("dont available")
}

