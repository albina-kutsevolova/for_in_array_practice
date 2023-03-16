import UIKit
// Начав тренировки, лыжник в первый день пробежал 10 км. Каждый следующий день он увеличивал пробег на 10 процентов от пробега предыдущего дня. Определить  в какой день он пробежал больше 20 км и в какой день суммарный пробег за все дни превысит 100 км

if true {
    var firstDistance = 10.0
    var addPercent = 10.0
    var addDistance = 0.0
    var endDistance = 20.0
    var day = 1
    while firstDistance <= endDistance {
        addDistance = firstDistance * addPercent / 100
        firstDistance += addDistance
        day += 1
    }
    print(firstDistance)
    print(day)
}

if true {
    var daynumber = 1
    var dist = 10.0
    var percent = 10.0
    var sumDistance = 10.0
    var addDist = 0.0
    var maxDistance = 100.0
    
    while sumDistance <= maxDistance {
        addDist = dist * percent / 100
        dist += addDist
        sumDistance += dist
        daynumber += 1
    }
    print(sumDistance)
    print(daynumber)
    
}
