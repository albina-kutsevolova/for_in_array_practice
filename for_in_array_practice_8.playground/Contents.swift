import UIKit

// Найти среднее арифметическое четных положительных элементов массива, стоящих на нечетных позициях
if true {
    var numbers = [1, 22, -346, 15, -28, -17, 11, 560, -12, 12, 36, 8, 22]
    var sum = 0
    var count = 0
    for (index, number) in numbers.enumerated() where index % 2 != 0 && number % 2 == 0 {
        if number > 0 {
            sum += number
            count += 1
        }
    }
    sum / count
}

if true {
    var numbers = [1, 22, -346, 15, -28, -17, 11, 560, -12, 12, 36, 8, 22]
    var sum = 0
    var count = 0
    for (index, number) in numbers.enumerated() {
        let condition = index % 2 != 0 && number % 2 == 0 && number > 0
        if condition {
            sum += number
            count += 1
        }
    }
    let middleAryphmetical = sum / count
    print(count)
    print(sum)
    print(middleAryphmetical)
}
