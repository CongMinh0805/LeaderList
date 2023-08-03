//
//  LeaderList.swift
//  LeaderList
//
//  Created by Minh Dang Cong on 03/08/2023.
//

import SwiftUI

struct LeaderList: View {
    var body: some View {
        VStack{
            
                
            
            NavigationView {
                List (leaders) { leader in
                    
                    NavigationLink {
                        LeaderCard(leader: leader)
                    } label: {
                        LeaderRow(leader: leader)
                    }
                    .navigationTitle("World Leaders 🌎")
                    
                    
                    
                }
            }
        }
       
    }
}

struct LeaderList_Previews: PreviewProvider {
    static var previews: some View {
        LeaderList()
    }
}
