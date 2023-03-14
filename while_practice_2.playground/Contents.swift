import UIKit

// Найти максимальное из натуралльных чисел, которое не превышает 5000 и нацело делится на 39
if true {
    var maxNumber = 5000
    let delitel = 39
    while maxNumber % delitel != 0 {
        maxNumber -= 1
    }
    print(maxNumber)
}
