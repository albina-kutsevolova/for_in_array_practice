import UIKit

// Вывести массив, состоящий из уникальных значений исходного массива
if true {
    var numbers = [1, 22, -346, 15, -28, -17, 11, 560, -12, 12, 36, 8, 22]
    var results = [Int]()
    
    for number in numbers where !(results.contains(number)) {
        results.append(number)
    }
    print(results)
}
