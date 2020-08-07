//
//
//  Created by Димитрий Бруй on 02.08.2020.
//  Copyright © 2020 Дмитрий Бруй. All rights reserved.
//

import Foundation

class Samolet {
    var speed: Double
    init (speed: Double){
        self.speed = speed
    }
    func Foo () {
        speed = 56
        
        //автоматически переносить все что было в Самолете
    }
}
class Heli: Samolet {
    func Vverh() {
        
    }    //наследование

}
var a = Samolet(speed:  50)
var  b = Heli(speed: 40)
print(b)
print(a)
 
