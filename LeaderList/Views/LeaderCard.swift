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
                    VStack {
                        MapView(coordinate: leader.locationCoordinate)
                            .frame(height: 300)
                        
                        CircleImage(image: leader.image)
                            .offset(y: -50)
                            .padding(.bottom, -50)
                        Text(leader.name)
                            .font(.system(size: 50))
                            .bold()
                            
                        Text(leader.flag)
                            .font(.system(size: 50))
                       
                            Text("\nDate of birth: \(leader.DOB)")
                                .font(Font.custom("Times New Roman", size: 22))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 15)
                                .bold()
                        
                        Text("\nAge: \(leader.age)")
                            .font(Font.custom("Times New Roman", size: 22))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 15)
                            .bold()
                        
                        Text("\nCountry: \(leader.country)")
                            .font(Font.custom("Times New Roman", size: 22))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 15)
                            .bold()
                        
                        Text("\nRegion: \(leader.region)")
                            .font(Font.custom("Times New Roman", size: 22))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 15)
                            .bold()
                      
                        Text("\nPosition: \(leader.position)")
                            .font(Font.custom("Times New Roman", size: 22))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 15)
                            .bold()
                        
                        Text("\nRegion: \(leader.region)")
                            .font(Font.custom("Times New Roman", size: 22))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 15)
                            .bold()
                        
                    
                        
                        
    //                    InfoView(text: leader.DOB, imageName: "envelope.fill")
    //                    InfoView(text: leader.country, imageName: "phone.fill")
                        

                    }
                    VStack {
                        Text("About:")
                            .font(Font.custom("Times New Roman", size: 35))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 15)
                            .padding(.bottom, 10)
                            .padding(.top,10)
                            .bold()
                        
                        Text(leader.description)
                            .font(Font.custom("Times New Roman", size: 20))
                            .multilineTextAlignment(.leading)
                        .padding(.horizontal, 15)
                    }
                }
                
            }
        }
        .ignoresSafeArea()
    }
}

struct LeaderCard_Previews: PreviewProvider {
    static var previews: some View {
        LeaderCard(leader: leaders[0])
    }
}
