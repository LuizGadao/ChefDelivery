//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 25/03/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                StoreDetailHeaderView(store: store)
                ProductListView(products: store.products)
            }
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar{
                ToolbarItem(placement: ToolbarItemPlacement.topBarLeading) {
                    Button{
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack(spacing: 4){
                            Image(systemName: "cart")
                            Text("Lojas").bold()
                        }
                        .foregroundColor(.colorRed)
                    }
                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storeMock[0])
}
