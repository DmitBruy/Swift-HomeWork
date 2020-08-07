//
//  main.swift
//  l6_Дмитрий Бруй
//
//  Created by Димитрий Бруй on 06.08.2020.
//  Copyright © 2020 Дмитрий Бруй. All rights reserved.
//

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.


import Foundation


struct workingHours {
    var name: String
    var workingDays: Int
}

extension workingHours: CustomStringConvertible {
    var description : String {
      
        
        
        return "Работник \(name), перевыполнил план на  \(workingDays) дней" //back 2 ussr
    }
}


struct queue <T> {
    private var elements: [T] = []
    
    public var isEmpty: Bool {
        return elements.count == 0
    }
    
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    mutating func dequeue()->T {
        return elements.removeLast()
    }
    
    public var head: T? {
        if isEmpty {
            print("Не найденол")
            return nil
        } else {
            print("Последний в списке тружеников \(elements.last!) пожелаем ему удачи!") //меньший результат
            return elements.last
        }
    }
    
    public var front: T? {
        if isEmpty {
            print("Не найдено")
            return nil
        } else {
            print("Ударно трудился \(elements.first!)")
            return elements.first
        }
    }
    
    func printMyQueue() {
        print(elements)
    }
}

extension queue {
    func filter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in elements {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}

var worker = queue<workingHours>()
worker.enqueue(element: .init(name: "Олег", workingDays: 6))
worker.enqueue(element: .init(name: "Владимир", workingDays: 5))
worker.enqueue(element: .init(name: "Кристина", workingDays: 2))
worker.enqueue(element: .init(name: "Антон", workingDays: 3))
worker.enqueue(element: .init(name: "Георгий", workingDays: 4))
worker.enqueue(element: .init(name: "Дмитрий", workingDays: 7))
worker.enqueue(element: .init(name: "Мария", workingDays: 4))
worker.enqueue(element: .init(name: "Александр", workingDays: 1))

worker.printMyQueue()
worker.head
worker.front

let bestWorker = worker.filter(predicate: {$0.workingDays == 7})
print("Орденом ветерана труда награждается \(bestWorker)")

