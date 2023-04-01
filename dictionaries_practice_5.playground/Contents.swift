import UIKit

// В словаре типа [String:(pwd:String, name: String)] логины хранятся в качестве ключей, а кортеж из паролей и имен пользователей - в качестве значений. При авторизации пользователя данные формирубися в виде кортежа (login: String, pass: String) и сравниваются с соответствующими значениями в словаре.
// В консоль в случае корректной авторизации должно вывестись приветствие вида "Привет, Вася!"

var users: [String:(pwd: String, name: String)] = [
    "vasya": ("1234", "Vasily"),
    "egor": ("4321", "Egor")
]
let authForm = (login: "vasya", pass: "1234")

if let user = users[authForm.login] {
    if user.pwd == authForm.pass {
        print("Привет, \(user.name)!")
    } else {
        print("пароль введен не верно")
    }
} else {
    print("пользователя с таким логином не существует")
}
