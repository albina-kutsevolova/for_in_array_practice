import UIKit

// Найти элементы массива, которые больше предыдущего

if true {
    var numbers = [3, 15, 6, 22, 12, 458, 8, 4, 1, 12]
    var results = [Int]()
    if !numbers.isEmpty {
        for (index, number) in numbers.enumerated() {
            if index != 0 {
                if number > numbers[index - 1] {
                    results.append(number)
                }
            }
        }
    } else {
        print("Масив пустой")
    }
    print(results)
}
