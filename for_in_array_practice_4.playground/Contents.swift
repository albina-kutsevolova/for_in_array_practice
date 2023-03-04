import UIKit

// Найти сумму четных отрицательных элементов массива
if true {
    var numbers = [1, 22, -346, 15, -28, -17, 11, 560, -12]
    var sum = 0
    for number in numbers {
        if (number < 0) && (number % 2 == 0) {
            sum += number
        }
    }
    print(sum)
}

if true {
    var numbers = [1, 22, -346, 15, -28, -17, 11, 560, -12]
    var sum = 0
    for number in numbers where number % 2 == 0 && number < 0 {
        sum += number
    }
    print(sum)
}
