//
//  CustomListElement.swift
//  LandmarkSwiftUI
//
//  Created by Muhammet Kadir on 1.04.2023.
//

import SwiftUI

struct CustomListElement: View {
    var item : LandmarkModel
    var body: some View {
        HStack(alignment: .center){
            Image( item.imageName)
                .resizable()
                .foregroundColor(.blue)
                .font(.headline)
                .frame(width: 75,height: 50)
                
            
            Text( item.name)
                .frame(maxWidth: .infinity, alignment: .leading)
            
        }
    }
}

struct CustomListElement_Previews: PreviewProvider {
    static var previews: some View {
        Text("Test")
    }
}
