//
//  ContentView.swift
//  Tabviewchallenge
//
//  Created by P.A. van Luijt on 05/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var tabIndex = 0
    
    var body: some View {
        
        TabView(selection: $tabIndex){
            //MARK: Tab 1
            Text("Deze tab is \(tabIndex).")
                .tabItem{
                    VStack{
                        Image(systemName:"tortoise")
                        Text("Tab 1")
                    }
                }.tag(0)
            // MARK: Tab 2
            Button("Breng me naar tab 3"){ tabIndex = 2 }
                .tabItem{
                    VStack{
                        Image(systemName:"arrow.right.square")
                        Text("Tab 2")
                    }
                }.tag(1)
            // MARK: Tab 3
            List {
                ForEach(0..<100){
                    _ in Text("Dit is tab 3")
                }
            }
            .tabItem{
                VStack{
                    Image(systemName: "hands.clap")
                    Text("Tab 3")
                }
            }.tag(2)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
