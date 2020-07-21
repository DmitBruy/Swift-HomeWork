//
//  main.swift
//  l2_Дмитрий Бруй
//
//  Created by Димитрий Бруй on 21.07.2020.
//  Copyright © 2020 Димитрий Бруй. All rights reserved.
//

import Foundation

//
//  main.swift
//  2l_Дмитрий Бруй.playground
//
//  Created by Димитрий Бруй on 19.07.2020.
//  Copyright © 2020 Димитрий Бруй. All rights reserved.
//

import Foundation
// Первое задание
var a = 4

func even () {
   
    if a % 2 == 0 {

    print ("Число четное")
}
else {

    print ("Число не четное")
}
}
even()

//Второе задание

var b = 9

func three () {
   
    if b % 3 == 0 {

    print ("Число делится на 3")
}
else {

    print ("Число не делится на 3")
}
}
three()

//Третье задание

var array: [Int] = []
for i in 0...100 {
    array.append(i)
}
print (array)

//Четвертое задание


for (index, value) in array {
    if (value % 2) > 0 {
        array.remove(at: array.index(of: value)!)
    }
}



