import UIKit

// существует реестр файлов, над каждым из которых можно совершать определенные действия - чтение, изменение, удаление. Файлы представлены в виде строк с названием файла и операциями: "review.doc R W", "note.txt R W X", "log.txt R"] где R - доступ для чтения, W - для записи, X - для удаления. На вход программы подается ися файла и операция ввиде строки read, write, delete. Необходимо вывести статус завершения операции - ОК, если операция выполнена успещно или Revoke6 если операция не может быть выполнена с этим файлом

let files = ["review.doc R W", "note.txt R W X", "log.txt R"]
let commands = ["R": "read","W": "write", "X": "delete" ]

func command(file: String, exec: String) -> String {
    let components = file.components(separatedBy: " ")
    var operations = [String]()
    for component in components {
        if let operation = commands[component] {
            operations.append(operation)
        }
    }
    if operations.contains(exec) {
        return "OK"
    } else {
        return "Revoke"
    }
}
command(file: files[0], exec: "write")
command(file: files[2], exec: "write")
