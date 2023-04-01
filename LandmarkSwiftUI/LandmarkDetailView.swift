//
//  LandmarkDetailView.swift
//  LandmarkSwiftUI
//
//  Created by Muhammet Kadir on 1.04.2023.
//

import SwiftUI
import MapKit

struct LandmarkDetailView: View {
    var item : LandmarkModel
    var body: some View {
        ZStack(alignment: .center) {
            VStack{
                MapView(coordinate: item.locationCoordinate).edgesIgnoringSafeArea(.top).frame(height: UIScreen.main.bounds.height*0.4).padding(.bottom,100)
                VStack(alignment:.leading){
                    Text(item.name).foregroundColor(.green).font(.largeTitle)
                    HStack(alignment: .center){
                        Text(item.country)
                        Spacer()
                        Text(item.category)
                    }
                }.padding()
                Spacer()
            }.navigationBarTitle(Text(item.name))
            Image(item.imageName).resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white,lineWidth: 5))
                .shadow(radius: 15)
                .frame(width: UIScreen.main.bounds.width * 0.8,height: UIScreen.main.bounds.width * 0.8)
        }
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(item: landmark1)
    }
}
