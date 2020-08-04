//
//  extension.swift
//  l5_Бруй Дмитрий
//
//  Created by Димитрий Бруй on 04.08.2020.
//  Copyright © 2020 Дмитрий Бруй. All rights reserved.
//

import Foundation
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

extension Car {
    
    private func changeStateAtFalse( for detail: Bool, name: String, stateDescription: String) {
        if detail == true {
                print ("\(name) \(brand) \(stateDescription)")
        } else{
            print ("\(name) \(brand) \(stateDescription)")
        }
    }
    private func changeStateAtTrue ( for detail: Bool, name: String, stateDescription: String) {
        if detail == true {
                print (" \(name) \(brand) \(stateDescription)")
        } else{
            
        print ("\(name) \(brand) \(stateDescription)")
    }

}
    mutating func engineStart() {
        changeStateAtTrue(for: engine, name: "Двигатель", stateDescription: "запущен")
        engine = true
}
   
    mutating func engineStop() {
    changeStateAtTrue(for: engine, name: "Двигатель", stateDescription: "запущен")
    engine = false
    }
    
    
    mutating func openWindows() {
       changeStateAtTrue(for: engine, name: "Окна", stateDescription: "открыты")
       engine = true
       }
    
    
    mutating func closenWindows() {
    changeStateAtTrue(for: engine, name: "Окна", stateDescription: "закрыты")
        engine = false
         }

}

//Расширения

extension SportCar: CustomStringConvertible {
    var description: String {
        return "Автомобиль \(brand) способен разогнаться до \(speed) Км/ч"
    }
    extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Грузовик марки \(brand) готов к выезду"
        }

    }
}

