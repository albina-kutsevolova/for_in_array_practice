import UIKit

/* Игра Scrubble. Буквы оцениваюися так:
 * А, В, Е, И, Н, О, Р, С, Т - 1 очко;
 * Д, К, Л, М, П, У - 2 очка;
 * Б, Г, Ё, Ь, Я - 3 очка;
 * Й, Ы - 4 очка;
 * Ж, З, Х, Ц, Ч - 5 очков;
 * Ш, Э, Ю - 8 очков;
 * Ф, Щ, Ъ - 10 очков.
 Напишите программу, которая вычисляеи стоимость слова, заданного запанее
 */
 
let word = "Жесть"
let scores: [Character: Int] = [
    "А": 1,
    "Б": 3,
    "Ж": 5,
    "Е": 1,
    "С": 1,
    "Т": 1,
    "Ь": 3
]

var wordScore = 0

for char in word {
    if let score = scores[Character(String(char).uppercased())] {
        wordScore += score
    }
}
print(wordScore)
