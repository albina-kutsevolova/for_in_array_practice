import UIKit

//Напишите функцию, которая вычисляет и возвращает отдельно две суммы элементов массива, имеющих четное и нечетное значение
func sums(array: [Int]) -> (odds: Int, notOdds: Int) {
    let oddsArray = array.filter {$0 % 2 == 0}
    let notOddsArray = array.filter {$0 % 2 != 0}
    var sum1 = 0
    for num in oddsArray {
        sum1 += num
    }
    var sum2 = 0
    for num in notOddsArray {
        sum2 += num
    }
    return(sum1, sum2)
}

let s = sums(array: [1, 2, 3, 4, 5, 6, 7, 8, 9,])
s.notOdds
s.odds
