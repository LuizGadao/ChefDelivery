//
//  ProductDetailQuantity.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 28/03/24.
//

import SwiftUI

struct ProductDetailQuantity: View {
    
    @Binding var quantidy: Int
    
    var body: some View {
        VStack{
            Text("Quantidade")
                .font(.title3)
                .bold()
            
            HStack(spacing: 16){
                Button {
                    if (quantidy > 1) {
                        quantidy -= 1
                    }
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                
                Text("\(quantidy)")
                    .font(.title2)
                    .bold()
                
                Button {
                    quantidy += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                }
            }
        }
    }
}

#Preview {
    ProductDetailQuantity(quantidy: .constant(1))
}
