import UIKit

// Гражданин 1 марта открыл счет в банке, вложив 1000 рублей. Через каждый месяц размер вклада увеличивается на 2 процента от имеющейся суммы. Определить за какой месяц величина ежемесячного увеличения вклада превысит 30 рублей и через сколько месяцев размер вклада превысит 1200 рублей

if true {
    var deposit = 1000.0
    var count = 0
    var dipositSum = 0.0
    var dipositArray = [Double]()
    
    
    while dipositSum <= 30.0 {
        var newSum = deposit * 1.02
        count += 1
        dipositSum = newSum - deposit
        deposit = newSum
        dipositArray.append(dipositSum)
    }
    print(dipositArray)
    print(count)
    print(deposit)
    
    var newLimit = 0.0
    var n = 0
    while newLimit <= 200.0 {
        newLimit += dipositArray[n]
        n += 1
        }
    print(n)
}

if true {
    var month = 3
    var sum = 1000.0
    var percent = 2.0
    var addSum = 0.0
    var increase = 30.0
    
    while addSum <= increase {
        addSum = sum * percent / 100
        sum += addSum
        month += 1
    }
    month
    let askedMonth = month % 12
}

if true {
    var initMonth = 3
    var month = initMonth
    var sum = 1000.0
    var percent = 2.0
    var addSum = 0.0
    var endSum = 1200.0
    
    while sum <= endSum {
        addSum = sum * percent / 100
        sum += addSum
        month += 1
    }
    month - initMonth
}
