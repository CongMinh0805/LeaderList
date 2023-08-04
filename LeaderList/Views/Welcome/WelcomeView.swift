//
//  WelcomeView.swift
//  LeaderList
//
//  Created by Minh Dang Cong on 04/08/2023.
//

import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true

    var body: some View {
        ZStack {
                    if isWelcomeActive {
                        GreetingView(active: $isWelcomeActive)
                    } else {
                        LeaderList()
                    }
                }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
