//
//  LeaderList.swift
//  LeaderList
//
//  Created by Minh Dang Cong on 03/08/2023.
//

import SwiftUI

struct LeaderList: View {
    @State private var ageFilter: Double = 18
    
    enum RegionFilter: String, CaseIterable, Identifiable {
        case all
        case asia
        case europe
        case oceania
        case africa
        case northAmerica = "North America"
        case southAmerica = "South America"

        var id: String { self.rawValue }

        var title: String {
            switch self {
            case .all: return "All Regions"
            case .asia: return "Asia"
            case .europe: return "Europe"
            case .oceania: return "Oceania"
            case .africa: return "Africa"
            case .northAmerica: return "North America"
            case .southAmerica: return "South America"
            }
        }
        
        var displayTitle: String {
            return title
        }
        
    }

    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var searchText = ""
    @State private var isSearchBarVisible = false
    @State private var selectedRegionFilter: RegionFilter = .all

    var filteredLeaders: [Leader] {
            let leadersToDisplay: [Leader]

            if selectedRegionFilter == .all {
                leadersToDisplay = leaders.filter { leader in
                    (leader.age >= Int(ageFilter))
                        && (searchText.isEmpty || leader.name.localizedCaseInsensitiveContains(searchText))
                }
            } else {
                let selectedRegionLowercased = selectedRegionFilter.rawValue.lowercased()
                leadersToDisplay = leaders.filter { leader in
                    (leader.age >= Int(ageFilter))
                        && (searchText.isEmpty || leader.name.localizedCaseInsensitiveContains(searchText))
                        && (leader.region.lowercased() == selectedRegionLowercased)
                }
            }

            return leadersToDisplay.sorted { $0.name < $1.name } // Sort the leaders in ascending alphabetical order by name
        }



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
                // Slider to filter by age
                               VStack {
                                   Text("Age Filter: \(Int(ageFilter))")
                                   Slider(value: $ageFilter, in: 18...100, step: 1)
                                       .padding(.horizontal)
                               }
                               .padding(.trailing)

                Picker("Region Filter", selection: $selectedRegionFilter) {
                    ForEach(RegionFilter.allCases) { region in
                        Text(region.title).tag(region)
                    }
                }
                .pickerStyle(MenuPickerStyle())

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
                List(filteredLeaders) { leader in
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


