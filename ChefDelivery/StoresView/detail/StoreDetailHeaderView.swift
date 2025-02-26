//
//  StoreDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 28/03/24.
//

import SwiftUI

struct StoreDetailHeaderView: View {
    
    let store: StoreType
    
    var body: some View {
        VStack(alignment:.leading) {
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
        }
    }
}

#Preview {
    StoreDetailHeaderView(store: storeMock[3])
}
