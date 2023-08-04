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
                .frame(width: 80, height: 80)
            VStack {
                Text(leader.name)
                    
                Text(leader.flag)
                    .frame(alignment: .leading)
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
