//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 20/03/24.
//

import SwiftUI

struct ContentView: View {
    
    var orders: [OrderType] = [
        OrderType(id: 1, name: "barbecue", image: "barbecue-banner"),
        OrderType(id: 2, name: "prato feito", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "poke", image: "pokes-banner"),
    ]
    
    var body: some View {
        NavigationView {
            VStack{
                NavigationBar()
                    .padding(.horizontal, 15)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20){
                        OrderTypeGridView()
                        CarroselView(orders: orders)
                        StoreView(stores:storeMock).padding(EdgeInsets(NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)))
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
