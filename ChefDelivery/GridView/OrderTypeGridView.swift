//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 20/03/24.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    }
    
    var body: some View {
        LazyHGrid(rows: gridLayout, spacing: 25) {
            ForEach(orderMock) { orderItem in
                OrderTypeView(order: orderItem)
            }
        }
        .frame(height: 200)
        .padding(.horizontal)
        //.background(.blue)
    }
}

#Preview {
    OrderTypeGridView()
}
