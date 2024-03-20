//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 20/03/24.
//

import SwiftUI

struct OrderTypeGridView: View {
    var body: some View {
        
        Grid{
            GridRow{
                Text("segunda")
                Text("terça")
                Text("quarta")
            }
            
            Divider()
            GridRow{
                Text("item 1")
                Text("item 2")
                Text("item 3")
            }
            
            Divider()
            GridRow{
                Text("item 1")
                Text("item 2")
                Text("item 3")
            }
        }
    }
}

#Preview {
    OrderTypeGridView()
}
