import UIKit

// В некотором году (назовем его условно первым) на участке в 100 гектаров средняя урожайность ячменя составила 20 центнеров с гектара. После этого каждый год площадь участка уыеличивалась на 5 процентов, а средняя урожайность на 2 процента, определить: в каком году урожайность превысит 22 центнера с гектара, в каком году площадь станет больше 120 гектаров, в каком году общий урожай, собранный за все время начиная с первого года превысит 8000 центнеров

if true {
    var middleAmount = 20.0
    var improveAmountPercent = 2.0
    var year = 1
    
    while middleAmount <= 22 {
        let plusAmount = middleAmount * improveAmountPercent / 100
        middleAmount += plusAmount
        year += 1
    }
    print(middleAmount)
    print(year)
    
}

if true {
    var square = 100.0
    var improveSquarePercent = 5.0
    var year = 1
    
    while square <= 120 {
        square += square * (improveSquarePercent / 100)
        year += 1
    }
    print(square)
    print(year)
}

if true {
    var square = 100.0
    var improveSquarePercent = 5.0
    var middleAmount = 20.0
    var improveAmountPercent = 2.0
    var year = 1
    var sumAmount = square * middleAmount
    
    while sumAmount <= 8000 {
        square += square * (improveSquarePercent / 100)
        middleAmount += middleAmount * (improveAmountPercent / 100)
        sumAmount += square * middleAmount
        year += 1
    }
    print(sumAmount)
    print(year)
}
