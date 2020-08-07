//
//  main.swift
//  lesson-3
//
//  Created by Димитрий Бруй on 29.07.2020.
//  Copyright © 2020 Дмитрий Бруй. All rights reserved.
// init - конструктор


import Foundation

enum Color: String{        //параметры
    case grey = "серый", green = "зелёный", blue = "голубой", black = "черный",red = "красный", white = "белый"
}
enum EngineType{
    case бензиновый, дизельный
}

struct car {
    let brand : String
    let model : String
    var color : Color
    let doors : Int
    let enginType : EngineType
    let engineVolume : Double
    let TrunkVolume : Int
    let fuelType : String
    let fuelCons : Double
    var engineStart : Bool{
        willSet{          //выводит состояние двигателя до запуска
            if engineStart {
                print ("Сейчас двигатель \(brand) запущен")
            } else {
                print ("Сейчас двигатель \(brand) заглушен")
            }
        }
        
    }
    //при запуске двигателя (или изменении любого  параметра) будет писать соответствущее сообщение
        
        didSet{
            if engineStart {
                print ("Двигатель \(brand) \(model) запущен")
            } else {
                print ("Двигатель \(brand) \(model) заглушен")
        }
    }
    }
    func printCar() {
        print ("Автомобиль \(brand) \(model), цвет: \(color.rawValue), тип двигателя: \(enginType) объёмом \(engineVolume)")
        
            
        }
}

mutating func brush(with color: Color){
        self.color = color
    }
    
}

let vazPriora = car(brand: "Lada", model: "Priora", color: .grey, doors: 5, enginType: .бензиновый, engineVolume: 1.6, TrunkVolume: 430, fuelType: "92", fuelCons: 7.1, engineStart: true)
var vazVesta = car(brand: "Lada", model: "Vesta", color: .green, doors: 5, enginType: .бензиновый, engineVolume: 1.8, TrunkVolume: 480, fuelType: "92", fuelCons: 6.9, engineStart: true)
let bmw3 = car(brand: "BMW", model: "330i", color: .blue, doors: 5, enginType: .бензиновый, engineVolume: 2.0, TrunkVolume: 480, fuelType: "95", fuelCons: 5.7, engineStart: true)
var audiA5d = car(brand: "Audi", model: "A5 Sportback", color: .white, doors: 5, enginType: .бензиновый, engineVolume: 3.0, TrunkVolume: 465, fuelType: "дизельное топливо", fuelCons: 5.0, engineStart: true)
let mercedesGt = car(brand: "Mercedes Benz", model: "AMG GT", color: .black, doors: 3, enginType: .бензиновый, engineVolume: 3.0, TrunkVolume: 463, fuelType: "98", fuelCons: 9.4, engineStart: true)
var gtr = car(brand: "Nissan", model: "GTR", color: .black, doors: 3, enginType: .бензиновый, engineVolume: 3.8, TrunkVolume: 315, fuelType: "98", fuelCons: 11.7, engineStart: false)


//vazPriora.printCar()
//vazVesta.printCar()
//audiA5d.printCar()
gtr.printCar()

//let garage = [vazPriora,vazVesta,bmw3,audiA5d,mercedesGt,gtr]
//
//for car in garage{                            //печатаем авто только зеленого цвета
//    if car.color == green {
//        print car.printCar()
//    }
//}
gtr.brush (with: .red)             // перекрашиваем и выводим новый результат
gtr.printCar()

audiA5d.engineStart = false         //запустили/заглушили двигатель

gtr.engineStart = true

vazVesta.engineStart = false
