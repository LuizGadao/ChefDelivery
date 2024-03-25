//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 25/03/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    
    var body: some View {
        Text("Hello, \(store.name)")
    }
}

#Preview {
    StoreDetailView(store: storeMock[0])
}
