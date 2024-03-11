//
//  Order.swift
//  10 CupcakeCorner iOS 17
//
//  Created by Marcin Frydrych on 11/03/2024.
//

import Foundation

@Observable
class Order {
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    
    var type = 0
    var quantity = 3
    
    var specieRequestEnabled = false {
        didSet {
            if specieRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    var extraFrosting = false
    var addSprinkles = false
}
