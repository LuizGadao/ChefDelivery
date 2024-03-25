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
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Image(store.headerImage)
                    .resizable()
                    .scaledToFit()
                
                HStack{
                    Text(store.name)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    Image(store.logoImage)
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                HStack {
                    Text(store.location)
                    
                    ForEach(1...store.stars, id: \.self){ _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.caption)
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                Text("Produtos")
                    .font(.title2)
                    .bold()
                    .padding(.vertical, 8)
                    .padding(.horizontal)
                
                ForEach(store.products) { product in
                    HStack(spacing: 8) {
                        VStack(alignment:.leading, spacing: 8){
                            Text(product.name).bold()
                            Text(product.description).foregroundColor(.black.opacity(0.5))
                            Text("\(product.price)")
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
                .padding()
                
            }
            .navigationTitle(store.name)
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    StoreDetailView(store: storeMock[0])
}
