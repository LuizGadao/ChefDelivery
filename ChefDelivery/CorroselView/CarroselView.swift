//
//  CarroselView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 21/03/24.
//

import SwiftUI

struct CarroselView: View {
    
    let orders: [OrderType]
    
    var body: some View {
        TabView {
            ForEach(orders) { item in
                CorroselItemView(order: item)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .automatic))
    }
}

#Preview {
    CarroselView(orders: [
        OrderType(id: 1, name: "barbecue", image: "barbecue-banner"),
        OrderType(id: 2, name: "prato feito", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "poke", image: "pokes-banner"),
    ])
}
