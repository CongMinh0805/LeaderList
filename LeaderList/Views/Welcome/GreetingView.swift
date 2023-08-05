//
//  GreetingView.swift
//  LeaderList
//
//  Created by Minh Dang Cong on 04/08/2023.
//

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    @State private var showStudentInfo = false
    @State private var showGeneralInfo = false
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack{
            Color("LeaderCard").ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20){
                HStack {
                    Button(action: {
                        showGeneralInfo = true // Set the state to true to present the GeneralInfo view
                    }, label: {
                        Image(systemName: "info.circle") // Information icon
                            .font(.system(size: 30))
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                    })
                    .padding(16)
                    .sheet(isPresented: $showGeneralInfo, content: {
                        GeneralInfo(active: .constant(true)) // Present the GeneralInfo view when the button is tapped
                    })

                    Spacer()

                    Spacer() // Add a spacer to push the button to the top right corner
                    HStack {
                        Button(action: {
                            showStudentInfo = true // Set the state to true to present the student info view
                        }, label: {
                            Image(systemName: "person.circle") // Use the systemName for the profile icon
                                .font(.system(size: 30))
                                .foregroundColor(colorScheme == .dark ? .white : .black)
                        })
                        .padding(16)
                        .sheet(isPresented: $showStudentInfo, content: {
                            StudentInfo() // Present the student info view when the button is tapped
                    })
                    }
                }
                Spacer()
                VStack(spacing: 0) {
                    Text("World Leaders")
                      .font(.system(size: 60))
                      .fontWeight(.heavy)
                      .multilineTextAlignment(.center)
                    Text("""
                    Individuals who shape our world
                    """)
                      .font(.title3)
                      .fontWeight(.light)
                      .multilineTextAlignment(.center)
                      .padding(.horizontal, 10)
                      .bold()
                    
                    
                }
              
                ZStack{
                    
                    Image("globe-icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .clipShape(Circle())
                }
                
                Spacer()


                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                        .fill(Color.black.opacity(0.8))
                      .padding(8)
                      .frame(height:80)
                      .overlay(Text("Let's dig in")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white))
                })
            }
        }
     
    }
}


struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}
