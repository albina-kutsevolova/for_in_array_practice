import UIKit

// Поменять местами максимальный и минимальный элементы массива
if true {
    var numbers = [3, 15, 6, 22, 12, 458, 8, 4, 1, 12]
    var max = (index: 0, value: Int.min)
    var min = (index: 0, value: Int.max)
    
    for (index, number) in numbers.enumerated() {
        if number > max.value {
            max = (index, number)
        } else if number < min.value {
            min = (index, number)
        }
    }
    numbers[max.index] = min.value
    numbers[min.index] = max.value
    print(numbers)
   
}
