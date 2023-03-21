import UIKit

// Данные об успеваемости учеников по математике хранятся в массиве кортежей в формате Фамилия - оценка. Требуется:
// 1. Отсортировать массив по успеваемости в порядке от лучших оценок к худшим
// 2. Отсортировать массив в обратном алфавитном порядке


if true {
    typealias PupilNote = (family: String, note: Int)
    let notes: [PupilNote] = [
        (family: "Ivanov", note: 5),
        (family: "Petrov", note: 5),
        (family: "Sidorov", note: 4),
        (family: "Sergeev", note: 3),
        (family: "Andreev", note: 4),
        (family: "Denisov", note: 3)
    ]
    
    let firstBestNotes = notes.sorted { firstPupil, lastPupil in
        firstPupil.note > lastPupil.note
    }
    print(firstBestNotes)
    
    let alphabetBack = notes.sorted { firstPupil, lastPupil in
        firstPupil.family > lastPupil.family
    }
    print(firstBestNotes)
}
