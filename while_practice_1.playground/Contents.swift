import UIKit

// Напечатать минимальное число, больше 200, которое нацело делится на 17
if true {
    var minNumber = 201
    let delitel = 17
    while minNumber % delitel != 0 {
        minNumber += 1
    }
    print(minNumber)
}
