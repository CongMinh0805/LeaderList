//
//  LeaderList.swift
//  LeaderList
//
//  Created by Minh Dang Cong on 03/08/2023.
//

import SwiftUI

struct LeaderList: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var searchText = ""
    @State private var isSearchBarVisible = false

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    isSearchBarVisible.toggle()
                }) {
                    Image(systemName: isSearchBarVisible ? "magnifyingglass.circle.fill" : "magnifyingglass")
                        .imageScale(.large)
                }
                .padding(.leading)

                Spacer()

                Button(action: {
                    isDarkMode.toggle()
                }) {
                    Image(systemName: isDarkMode ? "moon.stars.fill" : "sun.max.fill")
                        .imageScale(.large)
                }
                .padding(.trailing)
            }

            if isSearchBarVisible {
                SearchBar(searchText: $searchText)
            }

            NavigationView {
                List(leaders.filter { leader in
                    searchText.isEmpty || leader.name.localizedCaseInsensitiveContains(searchText)
                }) { leader in
                    NavigationLink {
                        LeaderCard(leader: leader)
                    } label: {
                        LeaderRow(leader: leader)
                    }
                }
                .navigationTitle("World Leaders 🌎")
                
            }
            
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

struct LeaderList_Previews: PreviewProvider {
    static var previews: some View {
        LeaderList()
    }
}


