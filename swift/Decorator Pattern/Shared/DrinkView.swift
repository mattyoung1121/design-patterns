//
//  DrinkView.swift
//  Decorator Pattern
//
//  Created by Matthew Young on 11/9/22.
//

import SwiftUI

struct DrinkView: View {
    
    let name: String
    let ingredients: [String]
    let cost: Double
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Your Order:")
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                HStack {
                    Text(name)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 0.5)
                
                HStack {
                    Text(String(format: "$%.2f", cost))
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 5)
                .padding(.bottom, 10)
            }
            .background(.white)
            .cornerRadius(15)
            .padding(.horizontal)
        }
    }
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView(name: "House Blend", ingredients: ["Water", "Coffee"], cost: 0.89)
    }
}
