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
                        .offset(y: -50)
                        .padding(.bottom, -50)
                    Text(leader.name)
                        .font(.system(size: 50))
                        .bold()
                        .foregroundColor(.black)
                    Image("rmit-logo-black")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 80)
                    HStack {
                        Text("Date of birth: \(leader.DOB)")
                            .font(Font.custom("Times New Roman", size: 21))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 1)
                    }
                    
                    
                    Text("About:")
                        .font(Font.custom("Times New Roman", size: 30))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 10)
                    Spacer()
                    Text(leader.description)
                        .font(Font.custom("Times New Roman", size: 20))
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 10)

                    
//                    InfoView(text: leader.DOB, imageName: "envelope.fill")
//                    InfoView(text: leader.country, imageName: "phone.fill")
                    

                }
            }
        }
    }
}

struct LeaderCard_Previews: PreviewProvider {
    static var previews: some View {
        LeaderCard(leader: leaders[0])
    }
}
