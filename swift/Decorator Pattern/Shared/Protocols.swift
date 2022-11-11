//
//  Classes.swift
//  Decorator Pattern
//
//  Created by Matthew Young on 11/9/22.
//

import Foundation

protocol Name {
    var name: String { get }
}

protocol Cost {
    var cost: Double { get }
}

protocol Ingredients {
    var ingredients: [String] { get }
}

typealias BeverageData = Name & Cost & Ingredients

protocol Beverage: BeverageData {
    var beverage: BeverageData { get }
}
