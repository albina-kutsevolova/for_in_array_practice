import UIKit

// Найти минимальный из элементов массива с четными индексами
if true {
    var numbers = [1, 22, -346, 15, -28, -17, 11, 560, -12]
    var min  = Int.max
    for (index, number) in numbers.enumerated() where index % 2 == 0 {
        if number < min {
            min = number
        }
    }
    print(min)
}
