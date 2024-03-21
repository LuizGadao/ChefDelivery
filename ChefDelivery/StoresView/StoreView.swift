//
//  StoreView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 21/03/24.
//

import SwiftUI

struct StoreView: View {
    
    let title = "Lojas"
    let stores: [OrderType]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title).font(.title)
            VStack(alignment: .leading, spacing: 30){
                ForEach(stores){ store in
                    StoreItemView(order: store)
                }
            }
        }
    }
}

#Preview {
    StoreView(stores: storeMock).padding()
}
