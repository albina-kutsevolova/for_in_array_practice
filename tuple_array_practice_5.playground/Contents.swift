import UIKit

// Данные о погоде летом за 2018, 2019, 2020 и 2022 годы представлена в виде массива. Элемент массива имеет вид (month: String, weather:[(temp:Int, rainy: Bool)]), где month - название месяца, weather - массив погоды за разные годы в этом месяце, temp - температура в Цельсиях, а rainy - показатель, дождливый был месяц или нет. Создайте такой массив и заполните его произвольными значениями. Определите: какой из месяцев лета самый дождливый

if true {
    let weatherData: [(month: String, weather:[(temp:Int, rainy: Bool)])] = [
        (month: "June", weather: [(temp: 27, rainy: true),
                                  (temp: 29, rainy: false),
                                  (temp: 25, rainy: false),
                                  (temp: 26, rainy: false),
                                  (temp: 31, rainy: true)]),
        (month: "July", weather: [(temp: 31, rainy: false),
                                  (temp: 32, rainy: true),
                                  (temp: 24, rainy: false),
                                  (temp: 21, rainy: true),
                                  (temp: 33, rainy: false)]),
        (month: "August", weather: [(temp: 27, rainy: true),
                                    (temp: 20, rainy: false),
                                    (temp: 23, rainy: false),
                                    (temp: 24, rainy: true),
                                    (temp: 31, rainy: true)])]
    
    var rainies = [0,0,0]
    for (index, month) in weatherData.enumerated() {
        for (_, year) in month.weather.enumerated() {
            if year.rainy { rainies[index] += 1}
        }
    }
    print(rainies)
}
