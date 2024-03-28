//
//  Draw.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 28/03/24.
//

import SwiftUI

struct Draw: View {
    var body: some View {
        ZStack{
            Color.mint.opacity(0.5)
            
            Rectangle()
                .fill(.red)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .position(CGPoint(x: 100, y: 100))
            
            Circle()
                .fill(.purple)
                .frame(width: 100, height: 100)
                .position(CGPoint(x:250.0, y: 250))
        }
        .frame(width: 350, height: 350)
    }
}

#Preview {
    Draw()
}
