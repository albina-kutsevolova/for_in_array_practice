import UIKit

// Покупатель стоит на кассе с корзинкой продуктов. Корзинка представлена в виде массива. Элемент массива - кортеж, содержащий в себе название, цену и количество продуктов  данной позиции.

if true {
    let cash: [(name: String, price: Double, quantity: Int)] = [
        (name: "Milk", price: 2.95, quantity: 2),
        (name: "Bread", price: 1.60, quantity: 1),
        (name: "Eggs", price: 3.50, quantity: 3),
        (name: "Souce", price: 0.95, quantity: 1),
        (name: "Icecream", price: 0.60, quantity: 4),
        (name: "Beer", price: 4.20, quantity: 6)
        ]
    // 1. Посчитайте стоимость продуктов в корзине
    var sum = 0.0
    for product in cash {
        sum += product.price * Double(product.quantity)
    }
    print(sum)
    // 2. Определите за какой из продуктов покупатель заплатит больше всего.
    var maxPrice = Double(Int.min)
    var maxIndex = 0
    for (index, product) in cash.enumerated() {
        if Double(product.quantity) * product.price > maxPrice {
            maxPrice = Double(product.quantity) * product.price
            maxIndex = index
        }
    }
    print("Покупатель заплатит больше всего за \(cash[maxIndex].name)")
    
    // 3. Отсортируйте продукты в порядке убывания стоимости
    let sortedProducts = cash.sorted { firstProduct, lastProduct in
        firstProduct.price * Double(firstProduct.quantity) > lastProduct.price * Double(lastProduct.quantity)
    }
    print(sortedProducts)
    
    // 4. Преобразуйте корзину в массив строковых описаний в форме: Молоко - 3 шт. на 270 р.
    
    let cashDescription = cash.map { product in
        "\(product.name) - \(product.quantity) шт. на \(Double(product.quantity) * product.price) руб."
    }
    print(cashDescription)
}

