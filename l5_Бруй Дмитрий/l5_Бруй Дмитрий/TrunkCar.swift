//
//  trunkCar.swift
//  l5_Бруй Дмитрий
//
//  Created by Димитрий Бруй on 04.08.2020.
//  Copyright © 2020 Дмитрий Бруй. All rights reserved.
//

import Foundation
// 3-е задание

class trunkCar: Car {
    
    let brand: String
    
    let year: Int
    
    var windows: Bool = false
    
    var engine: Bool = false
    
   
    
    init (brand: String, year: Int, speed: Int){
        self.brand = brand
        self.year = year
    
    }
    
    
    
}





