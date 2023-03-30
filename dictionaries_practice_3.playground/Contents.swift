import UIKit

/* Данные о e-mail-адресах студентов хранятся в словаре:
 let emails = [ "mgu.edu": ["andrei_serov", "aleksander_pushkin", "elena_belova", "kirill_stepanov"],
 "gmail.com": ["alena_semyonova", "ivan_polekhin", "marina_abramova], "yandex.ru": ["ekaterina_ivanova", "glebova_nastya"]]
 Нужно вывксти в консоль E-mail адреса учеников в классическом формате name@server.domainZone
 */



let emails = [ "mgu.edu": ["andrei_serov",
                           "aleksander_pushkin",
                           "elena_belova",
                           "kirill_stepanov"],
               "gmail.com": ["alena_semyonova",
                             "ivan_polekhin",
                             "arina_abramova"],
                "yandex.ru": ["ekaterina_ivanova",
                              "glebova_nastya"]]

               
for email in emails {
    for name in email.value {
        print("\(name)@\(email.key)")
    }
}
