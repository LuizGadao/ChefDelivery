//
//  CorroselItemView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 21/03/24.
//

import SwiftUI

struct CorroselItemView: View {
    
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
    }
}

#Preview {
    CorroselItemView(
        order: OrderType(id: 111, name: "test", image: "barbecue-banner")
    ).padding()
}
