//
//  ContentView.swift
//  LandmarkSwiftUI
//
//  Created by Muhammet Kadir on 1.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(landmarkArray){landmark in
                NavigationLink(destination: LandmarkDetailView(item: landmark)){
                    CustomListElement(item: landmark)
                }
            }.navigationBarTitle(Text("Landmark Book"))
                .listStyle(PlainListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
