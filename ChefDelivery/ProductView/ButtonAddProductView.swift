//
//  ButtonAddProductView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 28/03/24.
//

import SwiftUI

struct ButtonAddProductView: View {
    var body: some View {
        Button{
            print("click")
        } label: {
            HStack {
                Image(systemName: "cart")
                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .background(.colorRed)
            .foregroundColor(.white)
            .cornerRadius(30)
            .shadow(color: .colorRedDark.opacity(0.5), radius: 10)
        }
    }
}

#Preview {
    ButtonAddProductView()
}
