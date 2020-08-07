//
//  main.swift
//  lesson-4
//
//  Created by Димитрий Бруй on 30.07.2020.
//  Copyright © 2020 Дмитрий Бруй. All rights reserved.
//
//создать протокол
//import Foundation
//protocol Car {
//    var brand: String { get }
//    var year: Int { get }
//    var window: Bool { get set}
//    var engine: Bool { get set}
//}
import Foundation

struct Circle {

    var radius: Double

    var diametr: Double {
        get { return radius * 2 }
        set { radius = newValue / 2}
    }
}
var circle = Circle(radius: 25)

print(circle.diametr)

circle.diametr = 60

print(circle)



class FourWheel {
    
    var wheelDiametr: Int = 14
    var season = "Winter"
    
    init(wheelDiametr: Int){
        self.wheelDiametr = wheelDiametr
    }

    func changeWheel() {
        season = "Summer"
        
    }
}
