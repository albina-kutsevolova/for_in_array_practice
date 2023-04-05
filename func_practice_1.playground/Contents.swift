import UIKit

// Представим банк, в котором алгоритм начисления процентов по вкладам зависит от суммы вклада. В функцию в качестве параметра будут передаваться число (сумма вклада), а также количество лет. При значении меньше 10000, будет начислено 5 процентов ежегодно. Если значение находится в диапазоне от 10000 до 50000 - 7 процентов ежегодно. Если бодбще 50000 - то 10 процентов. Отработав, функция должна вернуть общую сумму с начисленными процентами.

func deposit(sum: Int, years: Int) -> Int {
    var result = sum
    for _ in 1...years {
        switch result {
        case ...10000:
            result = result * 105 / 100
        case 10001...50000:
            result = result * 107 / 100
        case 50001...:
            result = result * 110 / 100
        default: break
        }
    }
    return result
}
 
deposit(sum: 5000, years: 12)
