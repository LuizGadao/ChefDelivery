//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 21/03/24.
//

import SwiftUI

struct StoreItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack{
            Image(order.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(2)
                .frame(width: 50)
                .overlay {
                    Circle().stroke(.red, lineWidth: 2)
                }
            
            VStack{
                Text(order.name)
                    .font(.subheadline)
            }
            
            Spacer()
        }
        .onTapGesture {
            print("on click \(order.name)")
        }
    }
}

#Preview {
    StoreItemView(order: OrderType(id: 1, name: "Mostro Burger Udi", image: "monstro-burger-logo"))
}
