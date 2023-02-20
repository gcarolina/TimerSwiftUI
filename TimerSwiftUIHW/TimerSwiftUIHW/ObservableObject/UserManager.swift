//
//  UserManager.swift
//  TimerSwiftUIHW
//
//  Created by Carolina on 21.02.23.
//

import Combine
import Foundation

final class UserManager: ObservableObject {
    @Published var isRegister = false
    // A type that publishes a property marked with an attribute.
    // Тип, который публикует свойство, помеченное атрибутом.
    // Публикация свойства с атрибутом @Published создает издателя этого типа.
    // Вы получаете доступ к издателю с помощью оператора $
    @Published var name: String
    init() {
        self.name = UserDefaults.standard.string(forKey: "name") ?? ""
    }
    func saveName() {
        UserDefaults.standard.set(name, forKey: "name")
    }
    func removeName() {
        UserDefaults.standard.removeObject(forKey: "name")
        self.name = ""
    }
}
