//
//  main.swift
//  l5_Бруй Дмитрий
//
//  Created by Димитрий Бруй on 04.08.2020.
//  Copyright © 2020 Дмитрий Бруй. All rights reserved.
//

import Foundation

var sportCar = SportCar( brand: "Audi RS", year: 2020, speed: 320, turboEngine: true)

print(sportCar)
sportCar.StartEngine()
sportCar.turboEngine()

let trunkCar = TrunkCar(brand: Volvo, year: 2017)
print(TrunkCar)
