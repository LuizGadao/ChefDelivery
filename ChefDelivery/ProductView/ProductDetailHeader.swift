//
//  ProductDetailHeader.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 28/03/24.
//

import SwiftUI

struct ProductDetailHeader: View {
    
    let product: ProductType
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Image(product.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 20)
            
            Text(product.name)
                .font(.title)
                .bold()
                .padding()
            
            Text(product.description)
                .padding(.horizontal)
            
            Text(product.formattedPrice)
                .font(.title3)
                .bold()
                .padding(.horizontal)
        }
    }
}

#Preview {
    ProductDetailHeader(product: storeMock[0].products[2])
}
