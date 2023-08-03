//
//  CircleImage.swift
//  LeaderList
//
//  Created by user242876 on 8/2/23.
//

import SwiftUI

struct CircleImage: View {
    let image: Image
    
    var body: some View {
        
            image
                .clipShape(Rectangle())
                .overlay(
                    Rectangle()
                        .stroke(Color(.white), lineWidth: 4)
                )
                .shadow(color: .blue,radius: 5)
           
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("MBS"))
    }
}
