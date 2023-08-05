//
//  LeaderRow.swift
//  LeaderList
//
//  Created by Minh Dang Cong on 03/08/2023.
//

import SwiftUI

struct LeaderRow: View {
    let leader: Leader
    
    var body: some View {
        HStack {
            leader.image
                .resizable()
                .frame(width: 80, height: 100)
            VStack {
                HStack(alignment: .top) {
                    Text(leader.name)
                        .font(.system(size: 20))
                        .bold()
                    
                    Spacer()
                    
                    
                }
                
                HStack(alignment: .top) {
                    Text(leader.flag)
                        .font(.system(size: 50))
                    
                    Spacer()
                }
            }

            
        }
    }
}

struct LeaderRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LeaderRow(leader: leaders[0])
            LeaderRow(leader: leaders[5])
            LeaderRow(leader: leaders[9])

        }
    }
}
