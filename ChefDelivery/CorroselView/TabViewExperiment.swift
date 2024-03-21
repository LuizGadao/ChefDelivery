//
//  TabViewExperiment.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 21/03/24.
//

import SwiftUI

struct TabViewExperiment: View {
    var body: some View {
        VStack{
            TabView{
                Color.blue
                    .edgesIgnoringSafeArea(.top)
                    .tabItem {
                        Image(systemName: "1.circle")
                    }
                
                Color.yellow
                    .edgesIgnoringSafeArea(.top)
                    .tabItem {
                        Image(systemName: "2.circle")
                    }
                
                Color.red
                    .edgesIgnoringSafeArea(.top)
                    .tabItem {
                        Image(systemName: "3.circle")
                    }
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            //.frame(width: 200)
            
            TabView {
                Color.green
                    .edgesIgnoringSafeArea(.top)
                
                Color.red
                    .edgesIgnoringSafeArea(.top)
                
                Color.yellow
                    .edgesIgnoringSafeArea(.top)
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            .padding(EdgeInsets(NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 0, trailing:20)))
            
        }
    }
}

#Preview {
    TabViewExperiment()
}
