
// 赋值运算符
let a = 5
var b = 10
b = a
let (x, y) = (a, b)
print(x, y)


// 算数运算符 + - * /
var str1 = "hello"
str1 = str1 + " swift"

// 求余运算符
let m = 9 % 4

// 组合运算符
var aa = 1
aa += 1

// 比较运算符 == != > < >= <= === !==

// 三目运算符
let contentHeight = 20
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 30 : -10)

// 空合运算符
var defaultMessage: String?
let message = "swift"
let myMessage = defaultMessage ?? message

// 区间运算符
for index in 1..<6 {
    print(index)// 1 2 3 4 5
}

// 逻辑运算 ! && ||

