import UIKit

// Два человека соревнуются в троеборье, которое состоит из подтягивания, подъемов туловища и приседаний. Результаты записываются ввиде кортежей отдельно для каждого игрока. За 1 подтягивание атлет получает 70 очков, за подъем туловища - 45 очков, а за приседание 50 очков. Создайте такие кортежи и заполните их значениями. Определите победителя в состезании
if true {
    var firstAtlet = (podt: 12, press: 4, prised: 80)
    var secondAtlet = (podt: 10, press: 9, prised: 77)
    var podt = 70
    var press = 45
    var prised = 50
    var firstScore = firstAtlet.podt * podt + firstAtlet.press * press + firstAtlet.prised * prised
    var secondScore = secondAtlet.podt * podt + secondAtlet.press * press + secondAtlet.prised * prised
    if firstScore > secondScore {
        print("Победил первый атлет, результат: \(firstScore)")
    } else if firstScore < secondScore {
        print("Победил второй атлет, результат: \(secondScore)")
    } else {
        print("Победила дружба")
    }
}
