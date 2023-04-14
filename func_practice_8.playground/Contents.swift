import UIKit

// человек в мебельном магазине хочет купить письменный стол. он может донести его до собственной машины сам, если вес стола не превышает 40 кг либо попросить грузчиков, если его вес больше. Однако, есои стол в упаковке по одной стороне больше 140 см, а по другой - больше 70 см, придется заказывать доставку, так как стол в собственную машину не поместится. Напишите функцию, которая принимает вес и габариты стола и сообщает, как именно будет доставлен стол - собственноручно, с помощью грузчиков или с помощью доставки

enum Delivery: String {
    case selfStanding = "самостоятельно"
    case workers = "С помощью грузчиков"
    case deliveryService = "Сервис доставки"
}
func delivery(weight: Int, length: Int, width: Int, height: Int) -> Delivery {
    let gabarites = [length, width, height]
    let first = gabarites.max()!
    let second = gabarites.sorted().dropLast().max()!
    switch (weight, first, second) {
    case (_, 140..., _), (_, _, 70...):
        return Delivery.deliveryService
    case (40..., _, _):
        return Delivery.workers
    default: return Delivery.selfStanding
    }
}
