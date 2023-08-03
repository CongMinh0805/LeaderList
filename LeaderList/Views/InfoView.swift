//
//  InfoView.swift
//  LeaderList
//
//  Created by user242876 on 8/2/23.
//

import SwiftUI

struct InfoView: View {
    let text:String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: "envelope.fill")
                        .foregroundColor(Color("rmit-red"))
                    Text(text)
                        .foregroundColor(.red)
                }
                    
            )
            .padding(4)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.black, lineWidth: 1)
            )
            
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InfoView(text: "MBS", imageName: "envelope.fill")
            InfoView(text: "01234567", imageName: "phone.fill")
            
        }
        
    }
}
