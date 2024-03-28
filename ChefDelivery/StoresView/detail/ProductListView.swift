//
//  ProductListView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 28/03/24.
//

import SwiftUI

struct ProductListView: View {
    
    @State private var selectedProduct: ProductType?
    
    let products: [ProductType]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Produtos")
                .font(.title2)
                .bold()
                .padding(.vertical, 8)
                .padding(.horizontal)
            
            ForEach(products) { product in
                
                Button{
                    selectedProduct = product
                } label: {
                    ProductItemView(product: product)
                    .padding()
                    .foregroundColor(.black)
                }.sheet(item: $selectedProduct){ product in
                    ProductDetailView(product: product)
                }
                
            }
        }
    }
}

#Preview {
    ProductListView(products: storeMock[1].products)
}
