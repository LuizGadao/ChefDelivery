//
//  StoreView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 21/03/24.
//

import SwiftUI

struct StoreView: View {
    
    @State private var ratingFilter = 0
    var filteredStore: [StoreType] {
        return storeMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    let title = "Lojas"
    let stores: [StoreType]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(title).font(.title)
                
                Spacer()
                
                Menu("Filtar"){
                    
                    Button{
                        ratingFilter = 0
                    } label: {
                        Text("Limpar Filtro")
                    }
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self) { rating in
                        Button{
                            ratingFilter = rating
                        } label: {
                            let stars = rating == 1 ? "estrela" : "estrelas"
                            Text("\(rating) \(stars) ou mais")
                        }
                    }
                }.foregroundColor(.black)
            }
            
            
            VStack(alignment: .leading, spacing: 30){
                
                if filteredStore.isEmpty {
                    Text("Nenhum resultado encontrado")
                        .foregroundColor(.colorRed)
                        .font(.title2)
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                }
                
                ForEach(filteredStore){ store in
                    NavigationLink {
                        StoreDetailView(store: store)
                    } label: {
                        StoreItemView(store: store)
                    }
                }
            }
            .foregroundColor(.black)
        }
    }
}

#Preview {
    StoreView(stores: storeMock).padding()
}
