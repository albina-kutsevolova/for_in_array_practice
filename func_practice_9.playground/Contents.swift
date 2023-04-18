import UIKit

// Спортсмен-лыжник начал тренировки, пробежав в первый день некоторое количество километров (beginKm: Double). Каджый следующий день (days: Int) он увеличивал длину пробега на некоторое количество процентов  (percent: Double) от пробега предыдущего дня.
// Написать функцию, которая считает и возвращает суммарное пройденное расстояние (distance: Double)  в зависимости от принятых в функцию данных: beginKm: Double, percent: Double, days: Int
func distantion(beginKm: Double, days: Int, percent: Double) -> Double {
    var currentDist = beginKm
    var sum: Double = beginKm
    
    guard days > 0 else { return 0}
    guard days > 1 else { return beginKm }
    
    for _ in 2...days {
        currentDist *= (percent / 100 + 1)
        sum += currentDist
    }
    return sum
}

distantion(beginKm: 20, days: 4, percent: 10)
