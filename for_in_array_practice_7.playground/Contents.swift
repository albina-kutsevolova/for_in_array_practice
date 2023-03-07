import UIKit

// Определить количество элементов массива, значение которых больше соседних элементов
if true {
    var numbers = [1, 22, -346, 15, -28, -17, 11, 560, -12]
    var results = [Int]()
    if !numbers.isEmpty && numbers.count > 2 {
        for (index, number) in numbers.enumerated() where index > 0 && index < numbers.count - 1 {
            if number > numbers[index - 1] && number > numbers[index + 1] {
                results.append(number)
            }
        }
    } else {
            print("error")
        }
    print(results.count)
    print(results)
}
