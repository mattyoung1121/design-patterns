//
//  Classes.swift
//  Decorator Pattern
//
//  Created by Matthew Young on 11/9/22.
//

import Foundation

// Coffees
struct HouseBlend: BeverageData {
    var name: String = "House Blend"
    var cost: Double = 0.89
    var ingredients = ["Water", "House Blend"]
}

struct DarkRoast: BeverageData {
    var name: String = "Dark Roast"
    var cost: Double = 0.99
    var ingredients = ["Water", "Dark Roast"]
}

struct Decaf: BeverageData {
    var name: String = "Decaf"
    var cost: Double = 1.05
    var ingredients = ["Water", "Decaf"]
}

struct Espresso: BeverageData {
    var name: String = "Espresso"
    var cost: Double = 1.99
    var ingredients = ["Water", "Espresso"]
}

// Condiments
struct SteamedMilk: Beverage {
    var beverage: BeverageData
    
    var name: String {
        return "\(beverage.name), Steamed Milk"
    }
    
    var cost: Double {
        return beverage.cost + 0.10
    }
    var ingredients: [String] {
        return beverage.ingredients + ["Steamed Milk"]
    }
}

struct Mocha: Beverage {
    var beverage: BeverageData
    
    var name: String {
        return "\(beverage.name), Mocha"
    }
    
    var cost: Double {
        return beverage.cost + 0.20
    }
    var ingredients: [String] {
        return beverage.ingredients + ["Mocha"]
    }
}

struct Soy: Beverage {
    var beverage: BeverageData
    
    var name: String {
        return "\(beverage.name), Soy"
    }
    
    var cost: Double {
        return beverage.cost + 0.15
    }
    var ingredients: [String] {
        return beverage.ingredients + ["Soy"]
    }
}

struct Whip: Beverage {
    var beverage: BeverageData
    
    var name: String {
        return "\(beverage.name), Whip"
    }
    
    var cost: Double {
        return beverage.cost + 0.10
    }
    var ingredients: [String] {
        return beverage.ingredients + ["Whip"]
    }
}
