import UIKit

// Турист собирается в поход. Он сможет нести N кг вещей (maxWeight). Но вещей (stuff), которые он запланировал уложить в рюкзак, оказалось намного больше. Нужно определить, какие вещи от наиболее тяжелых к самым легким поместятся в рюкзак
if true {
    let maxWeight = 25.0
    var stuff: [String: Double] = [
        "Палатка": 6.0,
        "Спальник": 1.5,
        "Носки": 0.2,
        "Котелок": 0.3,
        "Портативная колонка": 0.4,
        "Топор": 5.0,
        "Нож": 0.4,
        "Еда": 10.0,
        "Вода": 8.0
    ]
    let sortedStuff = stuff.sorted { first, last in
        first.value > last.value
    }
    print(sortedStuff)
    
    var currentWeight = 0.0
    var backPack: [String] = [String]()
    
    for stuff in sortedStuff {
        var freeSpace = maxWeight - currentWeight
        if stuff.value <= freeSpace {
            backPack.append(stuff.key)
            currentWeight += stuff.value
        }
    }
    print(backPack)
}
