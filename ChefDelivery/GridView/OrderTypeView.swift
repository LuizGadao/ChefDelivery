//
//  OrderTypeView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 20/03/24.
//

import SwiftUI

struct OrderTypeView: View {
    
    let order: OrderType
    
    var body: some View {
        VStack(spacing: 5) {
            Image(order.image)
                .resizable()
                .scaledToFit()
                .fixedSize(horizontal: false, vertical: true)
                .overlay{
                    RoundedRectangle(cornerRadius:5).stroke(.red, lineWidth: 1)
                }
            Text(order.name)
                .font(.system(size: 10))
        }
        .frame(width: 70, height: 100)
    }
}

#Preview {
    OrderTypeView(order: orderMock[0])
}
