//
//  LeaderCard.swift
//  LeaderList
//
//  Created by user242876 on 8/2/23.
//

import SwiftUI

struct LeaderCard: View {
    let leader: Leader
    
    var body: some View {
        
        ScrollView {
            ZStack {
                Color("LeaderCard")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    MapView(coordinate: leader.locationCoordinate)
                        .frame(height: 300)
                    
                    CircleImage(image: leader.image)
                        .offset(y: -100)
                        .padding(.bottom, -100)
                    Text(leader.name)
                        .font(.system(size: 40))
                        .bold()
                        .foregroundColor(.black)
                    Image("rmit-logo-black")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 80)
                    
                    Text("About:")
                        .font(Font.custom("Times New Roman", size: 35))
                        .multilineTextAlignment(.leading)
                    Text(leader.description)
                        .font(Font.custom("Times New Roman", size: 20))

                    
//                    InfoView(text: leader.DOB, imageName: "envelope.fill")
//                    InfoView(text: leader.country, imageName: "phone.fill")
                    

                }
            }
        }
    }
}

struct LeaderCard_Previews: PreviewProvider {
    static var previews: some View {
        LeaderCard(leader: leaders[3])
    }
}
