import UIKit

// Вывести индексы элементов массива, значения которых находятся в указанном наперед диапазоне
if true {
    var numbers = [1, 22, -346, 15, -28, -17, 11, 560, -12]
    let range = -20...30
    var indices: [Int] = []
    for (index, number) in numbers.enumerated() where range ~= number {
        indices.append(index)
    }
    print(indices)
}
