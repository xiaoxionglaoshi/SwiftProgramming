
// 传入数组,输出最大最小值
func minMax(array: [Int]) -> (min: Int, max: Int) {
    assert(array.count > 0, "数组必须有元素")
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let (min, max) = minMax(array: [1,5,8,3,9,2])
min
max