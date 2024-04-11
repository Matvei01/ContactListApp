//
//  DataStore.swift
//  ContactListApp
//
//  Created by Matvei Khlestov on 12.04.2024.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Matvei",
        "Alexey",
        "Sergei",
        "Igor",
        "Michail",
        "Evgeniy",
        "Ivan",
        "Petr",
        "Oleg"
    ]
    
    let surnames = [
        "Khlestov",
        "Efimov",
        "Burunov",
        "Krutoi",
        "Kutuzov",
        "Onegin",
        "Dorn",
        "Yan",
        "Gazmanov"
    ]
    
    let emails = [
        "aaaaa@mail.ru",
        "bbbbb@mail.ru",
        "ccccc@mail.ru",
        "ddddd@mail.ru",
        "eeeee@mail.ru",
        "fffff@mail.ru",
        "ggggg@mail.ru",
        "hhhhh@mail.ru",
        "iiiii@mail.ru"
    ]
    
    let phones = [
        "11111111",
        "22222222",
        "33333333",
        "44444444",
        "55555555",
        "66666666",
        "77777777",
        "88888888",
        "99999999"
    ]
    
    private init() {}
}
