//
//  StudentInfo.swift
//  LeaderList
//
//  Created by Minh Dang Cong on 05/08/2023.
//

import SwiftUI

struct StudentInfo: View {
    @Environment(\.colorScheme) var colorScheme // Access the current color scheme
    
    var body: some View {
        ZStack {
            Image("student-info")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                if colorScheme == .dark {
                    Image("rmit-logo-white")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .padding(.top, 60)
                } else {
                    Image("rmit-logo-black")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .padding(.top, 60)
                }
                
                Text("COSC 2659")
                    .font(.custom("Times New Roman", size: 35))
                    .fontWeight(.bold)
                    .padding(.top, 20)
                    .multilineTextAlignment(.center)
               
                Text("IOS Development")
                    .font(.custom("Times New Roman", size: 35))
                    .fontWeight(.bold)
                    
                    .multilineTextAlignment(.center)
               
                Text("Dang Cong Minh")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                    .multilineTextAlignment(.center)
                
                Text("Student ID: s3904941")
                    .font(.title2)
                    .padding(.top, 8)
                
                Spacer()
            }
            
            
        }
        
    }
}

struct StudentInfo_Previews: PreviewProvider {
    static var previews: some View {
        StudentInfo()
    }
}
