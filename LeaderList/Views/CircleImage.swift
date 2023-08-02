//
//  CircleImage.swift
//  LeaderList
//
//  Created by user242876 on 8/2/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        
            Image("MBS")
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color(.red), lineWidth: 4)
                )
                .shadow(color: .blue,radius: 7)
           
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
