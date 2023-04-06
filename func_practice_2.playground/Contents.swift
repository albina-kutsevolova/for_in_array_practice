import UIKit

// Стрелок стредяет в мищень. Радиус центрального круга (10-ки) - 1 см, толщина каждого кольца мишени - 1 см, всего обдастей мишени 10 (9 колец и один круг - 10-ка, совмещенная с центром координатной плоскости). Известны координаты 5-ти попаданий.
// Посчитать сумму выбитых очков. Возможно попадания в "Молоко"

let results: [(x: Double, y: Double)] = [(4,5), (-3,-2), (0,0), (1,4), (-4,-2)]
func score(results: [(x: Double, y: Double)]) -> Int {
    var sum = 0
    for result in results {
        let hypot = sqrt(result.x * result.x + result.y * result.y)
        let score = 10 - Int(hypot)
        sum += score
    }
    return sum
}
let s = score(results: results)
