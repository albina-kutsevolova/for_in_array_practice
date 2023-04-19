import UIKit

// Создать функцию, принимающую в себя массив результатов каких-либо измерений (дробные числа), вычисляющую среднее значение и возвращающую массив отклонений результатов от среднего значения

func metering(array: [Double]) -> [Double] {
    var sum = 0.0
    array.forEach { num in
        sum += num
    }
    var middle = sum / Double(array.count)
    let differences: [Double] = array.map { num in
        middle - num
    }
    return differences
}
let diffs = metering(array: [1.2, 3.4, 5.6, 7.8])
print(diffs)
