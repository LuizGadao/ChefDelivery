//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 21/03/24.
//

import SwiftUI

struct StoreItemView: View {
    
    let store: StoreType
    
    var body: some View {
        HStack{
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(2)
                .frame(width: 50)
                .overlay {
                    Circle().stroke(.red, lineWidth: 2)
                }
            
            VStack{
                Text(store.name)
                    .font(.subheadline)
            }
            
            Spacer()
        }
    }
}

#Preview {
    StoreItemView(store: storeMock[3])
}
