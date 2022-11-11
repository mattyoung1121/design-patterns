//
//  ContentView.swift
//  Shared
//
//  Created by Matthew Young on 11/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var newDrink: BeverageData = HouseBlend()
    
    var body: some View {
        
        ZStack {
         
            Color(red: 0.949, green: 0.949, blue: 0.969)
                .ignoresSafeArea()
            
            HStack {
//                ScrollView {
                    VStack {
                        List {
                            Text("Coffee:")
                                .font(.largeTitle)
                            
                            Button("House Blend") {
                                newDrink = HouseBlend()
                            }
                            
                            Button("Dark Roast") {
                                newDrink = DarkRoast()
                            }
                            
                            Button("Decaf") {
                                newDrink = Decaf()
                            }
                            
                            Button("Espresso") {
                                newDrink = Espresso()
                            }
                        }
                        .frame(height: 280)
                        
                        List {
                            Text("Condiments:")
                                .font(.largeTitle)
                            
                            Button("Add Steamed Milk") {
                                newDrink = SteamedMilk(beverage: newDrink)
                            }
                            
                            Button("Add Mocha") {
                                newDrink = Mocha(beverage: newDrink)
                            }
                            
                            Button("Add Soy") {
                                newDrink = Soy(beverage: newDrink)
                            }
                            
                            Button("Add Whip") {
                                newDrink = Whip(beverage: newDrink)
                            }
                        }
                        .frame(height: 310)
                        
                        OrderView(name: newDrink.name, ingredients: newDrink.ingredients, cost: newDrink.cost)
                        
                        Spacer()
                    }
//                }
                
                List {
                    Text("Ingredients:")
                        .font(.largeTitle)
                    
                    ForEach(newDrink.ingredients, id: \.self) { ingredient in
                        Text("\(ingredient)")
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
