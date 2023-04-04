import UIKit

// В словаре типа [String:(pwd:String, name: String)] логины хранятся в качестве ключей, а кортеж из паролей и имен пользователей - в качестве значений. При авторизации пользователя данные формирубися в виде кортежа (login: String, pass: String) и сравниваются с соответствующими значениями в словаре.
// Напишите логику, регистрирующую нового пользователя

var users: [String:(pwd: String, name: String)] = [
    "vasya": ("1234", "Vasily"),
    "egor": ("4321", "Egor")
]
let authForm = (login: "vasya", pass: "1234")

let regForm: (login: String,
              pass: String,
              confirm: String,
              name: String) = ("arkadiy", "4567", "4567", "Arkasha")

if users[regForm.login] == nil {
    if regForm.pass == regForm.confirm {
        users[regForm.login] = (regForm.pass, regForm.name)
    } else {
        print("Введенные пароли не совпадают")
    }
} else {
    print("Такой пользователь уже существует")
}
print(users)
