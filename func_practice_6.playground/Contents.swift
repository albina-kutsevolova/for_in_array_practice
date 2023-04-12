import UIKit

// написать функцию isPrime, принимающую 1 аргумент - число от 0 до 1000, и возвращающую true, если оно простое и false - иначе
func isPrime(num: Int) -> Bool {
    if 0...3 ~= num {
        return true
    }
    for number in 2...num - 1 {
        if num % number == 0 {
            return false
        }
    }
    return true
}
isPrime(num: 15)
