
// 集合类型: 数组Array 字典Dictionary 集合Set

// 数组: Array
// 初始化
var someInts = [Int]()
var someInts2 = Array<Int>()
var someDouble = [Double](repeating: 0.0, count: 3)

// 增
someInts.append(1)
someInts.append(contentsOf: [2, 3, 4, 5, 6, 7, 8, 9])

// 删
someInts.remove(at: someInts.index(someInts.startIndex, offsetBy: 1))
someInts

someInts.removeLast()
someInts

someInts.removeLast(3)

// 改
someInts[1] = 10
someInts

someInts[2...3] = [3, 8]
someInts

someInts.insert(contentsOf: [9, 9, 9], at: someInts.endIndex)

// 查
for item in someInts {
    print(item)
}

for (index, value) in someInts.enumerated() {
    print("index: \(index), value: \(value)")
}

// 字典Dictionary
// 初始化
var someDict = [String: String]()
var someDict2 = Dictionary<String, String>()
var someDict3: [String: String] = ["name": "neng", "age": "18"]




// 增
someDict["age"] = "20"
someDict["name"] = "neng"
someDict["location"] = "beijing"
someDict

// 删
let removedValue = someDict.removeValue(forKey: "age")
someDict

someDict["emial"] = nil
someDict

// 改
someDict["name"] = "wjn"
let oldValue = someDict.updateValue("neng", forKey: "name")
someDict.updateValue("wjncode@gmail.com", forKey: "email")
someDict

// 查
for (key, value) in someDict {
    print("key: \(key), value: \(value)")
}

for key in someDict.keys {
    print(key)
}

for value in someDict.values {
    print(value)
}

let someDictKeys = [String](someDict.keys)
let someDictValues = [String](someDict.values).sorted()
print("keys: \(someDictKeys), values: \(someDictValues)")

// 集合 Set
// 初始化
var someSet = Set<String>()
var someSet2: Set = ["siwft", "java", "php", "python"]

// 增
someSet2.insert("oc")

// 删
if let removed = someSet2.remove("java") {
    print("remove: \(removed)")
}
someSet2.remove(at: someSet2.startIndex)

// 查
for genre in someSet2.sorted() {
    print("search : \(genre)")
}

// 集合操作
let A: Set = [1, 3, 5, 7, 9]
let B: Set = [0, 2, 4, 6, 8]
let C: Set = [2, 3, 5, 7]
let D: Set = [2, 4, 6]

// 交集: A C中都有的元素
let interSection = A.intersection(C).sorted()

// 并集: A B中所有元素
let union = A.union(B).sorted()

// 补集: A中不包含C中元素的集合
let subtracting = A.subtracting(C).sorted()

// 差集: 属于A不属于B
let symmetric = A.symmetricDifference(C).sorted()


// 集合之间关系
// B包含D
D.isSubset(of: B)

// D包含于B
B.isSuperset(of: D)

// A B不相交
A.isDisjoint(with: B)


