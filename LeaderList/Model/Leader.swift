//
//  Leader.swift
//  LeaderList
//
//  Created by user242876 on 8/2/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Leader : Identifiable{
    var id = UUID()
    var name : String
    var age: Int
    var DOB: String
    var country: String
    var position: String
    var description: String
   
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate : CLLocationCoordinate2D
}
