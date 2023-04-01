//
//  LandmarkModel.swift
//  LandmarkSwiftUI
//
//  Created by Muhammet Kadir on 1.04.2023.
//

import SwiftUI
import CoreLocation

struct LandmarkModel : Identifiable{
    var id : Int
    var name : String
    var imageName : String
    var country : String
    var category : String
    var coordinates : Coordinates
    var locationCoordinate : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}


struct Coordinates {
    var latitude : Double
    var longitude : Double
}


let landmark1 = LandmarkModel(id: 0, name: "Eiffel", imageName: "eiffel", country: "France", category: "Tower", coordinates: Coordinates(latitude: 41.0464945, longitude: 28.6668945))
let landmark2 = LandmarkModel(id: 1, name: "Yason", imageName: "yason", country: "Turkey", category: "Peninsula", coordinates: Coordinates(latitude: 40.9219, longitude: 37.8580))
let landmark3 = LandmarkModel(id: 2, name: "Myra", imageName: "myra", country: "Turkey", category: "Ancient City", coordinates: Coordinates(latitude: 10, longitude: 10))

let landmarkArray = [landmark1,landmark2,landmark3]


