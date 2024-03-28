//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 28/03/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    @State private var quantidy = 1
    
    let product: ProductType
    
    var body: some View {
        ProductDetailHeader(product: product)
        
        Spacer()
        
        ProductDetailQuantity(quantidy: $quantidy)
        
        Spacer()
        
        ButtonAddProductView()
    }
}

#Preview {
    ProductDetailView(product: storeMock[0].products[0])
}
