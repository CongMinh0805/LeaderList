//
//  GeneralInfo.swift
//  LeaderList
//
//  Created by Minh Dang Cong on 05/08/2023.
//

import SwiftUI

struct GeneralInfo: View {
    @Binding var active: Bool
    @State private var showLeaderList = false
    
    var body: some View {
//        ZStack {
            
           
            NavigationView {
             
                ZStack {
                    Image("background")
                        .resizable()
                        .ignoresSafeArea()
                    VStack {
                        ScrollView {
                            
                            Text("Global Leaders Insight")
                            .font(.custom("Times New Roman", size: 35))
                            .padding(.top, 200)
                            .padding(.horizontal, 10)
                            .foregroundColor(.yellow)
                            .bold()
                            .multilineTextAlignment(.center)
                            
                            Text("Their decisions can influence not just an entire country but also the future of the world, of all societies we live in. It is safe to say that our world order has been and is being shaped as it is thanks to them.\n\nBeing informed on the dynamic individuals impacting global affairs is critical in an ever-connected world. Welcome to 'Global Leaders Insight', a programme that gives you access to a vast database of world leaders. This app is your destination for detailed information on the movers and shakers at the helm of nations, whether you're a curious citizen, an avid student of geopolitics, or a business professional navigating the international environment.\n\nKeep up to date with real-time profiles of presidents, prime ministers, monarchs, and also spiritual leaders. We aim to provide a seamless and user-friendly experience that delve thoroughly into the lives of these prominent individuals, from the corridors of power to the global stage.")
                            .font(.custom("Times New Roman", size: 22))
                            .padding(.top, 20)
                            .padding(.horizontal, 15)
                            .foregroundColor(.yellow)
                            .bold()
                            
        //                    Button(action: {showLeaderList = true}, label: {
        //                        Capsule()
        //                         .fill(Color.black.opacity(0.8))
        //                         .padding(8)
        //                         .frame(height: 80)
        //                         .overlay(Text("Let's dig in")
        //                         .font(.system(.title3, design: .rounded))
        //                         .fontWeight(.bold)
        //                         .foregroundColor(.white))
        //                    })
                           
                                NavigationLink {
                                    LeaderList()
                                } label: {
                                    Capsule()
                                        .fill(Color.black.opacity(0.8))
                                        .padding(8)
                                        .frame(height: 80)
                                        .overlay(Text("Let's dig in")
                                        .font(.system(.title3, design: .rounded))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white))
                            }
                            
                        }
                    }
                }
            }
        }
    }


struct GeneralInfo_Previews: PreviewProvider {
    static var previews: some View {
        GeneralInfo(active: .constant(true))
    }
}
