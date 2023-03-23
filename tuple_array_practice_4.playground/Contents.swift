import UIKit

// Данные о погоде летом за 2018, 2019, 2020 и 2022 годы представлена в виде массива. Элемент массива имеет вид (month: String, weather:[(temp:Int, rainy: Bool)]), где month - название месяца, weather - массив погоды за разные годы в этом месяце, temp - температура в Цельсиях, а rainy - показатель, дождливый был месяц или нет. Создайте такой массив и заполните его произвольными значениями. Определите: В каком году лето было самым жарким



if true {
    let weatherData: [(month: String, weather:[(temp:Int, rainy: Bool)])] = [
        (month: "June", weather: [(temp: 27, rainy: true),
                                  (temp: 29, rainy: false),
                                  (temp: 25, rainy: false),
                                  (temp: 26, rainy: true),
                                  (temp: 31, rainy: true)]),
        (month: "July", weather: [(temp: 31, rainy: false),
                                  (temp: 32, rainy: true),
                                  (temp: 24, rainy: false),
                                  (temp: 21, rainy: true),
                                  (temp: 33, rainy: true)]),
        (month: "August", weather: [(temp: 27, rainy: true),
                                  (temp: 20, rainy: false),
                                  (temp: 23, rainy: false),
                                  (temp: 24, rainy: true),
                                  (temp: 31, rainy: true)])]
    
    var sumTemps = [0,0,0,0,0]
    for(_, month) in weatherData.enumerated() {
        for (yearIndex, year) in month.weather.enumerated() {
            sumTemps[yearIndex] += year.temp
        }
    }
    print(sumTemps)
    
    var maxTemp = Int.min
    var maxIndex = 0
    for (index, temp) in sumTemps.enumerated() {
        if temp > maxTemp {
            maxTemp = temp
            maxIndex = index
        }
    }
    maxTemp
    maxIndex
    print("Самое жаркое дето было в \(maxIndex + 2018) году")
}
