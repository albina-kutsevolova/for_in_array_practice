import UIKit

// Написать функцию, которая вычисляет и возвращает заданное количество процентов (целочисленное) от заданного числа
func percent(percent: Int, number: Int) -> Int {
    number * percent / 100
}

percent(percent: 20, number: 80)
