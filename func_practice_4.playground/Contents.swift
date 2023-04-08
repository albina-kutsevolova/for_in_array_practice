import UIKit

// Написать функцию, предназначенную для вычисления количества пробелов в переданной в качестве параметра строке

func spaces(string: String) -> Int {
    var sum = 0
    for char in string where char == " " {
        sum += 1
    }
    return sum
}

spaces(string: "Hello World I Can solve this problem")
