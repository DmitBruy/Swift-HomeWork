//
//  sportCar.swift
//  l5_Бруй Дмитрий
//
//  Created by Димитрий Бруй on 04.08.2020.
//  Copyright © 2020 Дмитрий Бруй. All rights reserved.
//

import Foundation

// 3-е задание

class SporCar: Car {
    var marc: String
    
    var year: String
    
    
    let brand: String
    let year: Int
    let speed: Int
    var windows: Bool = false
    var engine: Bool = false
    var headlights: Bool
    var turboEngine: Bool
    
    init (brand: String, year: Int, speed: Int, turboEngine: Bool){
        self.brand = brand
        self.year = year
        self.turboEngine = turboEngine
        self.speed = speed
    }
    func turboOn(){
        if turboEngine == false {
            turboEngine = true
            print("В автомобиле \(brand) установлен турбокомпресср")
        }
    }



}

