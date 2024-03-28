//
//  ProductItemView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 28/03/24.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: ProductType
    
    var body: some View {
        HStack(spacing: 8) {
            VStack(alignment:.leading, spacing: 8){
                Text(product.name).bold()
                Text(product.description)
                    .foregroundColor(.black.opacity(0.5))
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                Text(product.formattedPrice)
            }
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                .frame(width: 120, height: 120)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 10, x: 6, y: 6)
        }
    }
}

#Preview {
    ProductItemView(product: storeMock[0].products[0])
        .padding()
}
