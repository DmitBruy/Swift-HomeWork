//
//  protocolswift.swift
//  l5_Бруй Дмитрий
//
//  Created by Димитрий Бруй on 04.08.2020.
//  Copyright © 2020 Дмитрий Бруй. All rights reserved.
//

import Foundation

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

protocol Car {
    var brand: String { get }
    var marc: String { get }
    var year: String { get }
    var engine: Bool{ get set }
    var windows: Bool { get set }
    var headlights: Bool  { get set }
}
