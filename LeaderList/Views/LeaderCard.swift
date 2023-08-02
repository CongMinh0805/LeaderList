//
//  LeaderCard.swift
//  LeaderList
//
//  Created by user242876 on 8/2/23.
//

import SwiftUI

struct LeaderCard: View {
    var body: some View {
        ZStack {
            Color("rmit-blue")
                .edgesIgnoringSafeArea(.all)
            VStack {
                CircleImage()
                Text("MBS")
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(.white)
                Image("rmit-logo-white")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 80)
                
                InfoView(text: "MBS", imageName: "envelope.fill")
                InfoView(text: "01234567", imageName: "phone.fill")
                
            }
        }
    }
}

struct LeaderCard_Previews: PreviewProvider {
    static var previews: some View {
        LeaderCard()
    }
}
