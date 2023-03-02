import UIKit

// Разделить все элементы массива на максимальный
if true {
    var maxArray = [3, 12, 14, 22, 8]
    var maxNumber = maxArray.max()
    var resultArray = [Double]()
    for number in maxArray {
        var resultNumber =  Double(number) / Double(maxNumber!)
        resultArray.append(resultNumber)
    }
    print(resultArray)
}
if true {
    var numbers = [3, 15, 6, 22, 12, 458, 8, 4, 1, 12]
    var max = Int.min
    for number in numbers {
        if number > max {
            max = number
        }
    }
    var results = numbers.map { number in
        Double(number) / Double(max)
    }
    print(results)
}
