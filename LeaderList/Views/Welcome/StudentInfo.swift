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
            VStack {
                Spacer()
                if colorScheme == .dark {
                    Image("rmit-logo-white")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                } else {
                    Image("rmit-logo-black")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                }
               
                Text("IOS Development")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 20)
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
