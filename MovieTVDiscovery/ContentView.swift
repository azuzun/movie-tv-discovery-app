//
//  ContentView.swift
//  Movie & TV Discovery App
//
//  Created by Ahmet Zeki Uzun on 15.05.2026.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        TabView
        {
            Tab(ConstantsSt.homeString, systemImage: ConstantsSt.homeIconString)
            {
                HomeView()
            }
            Tab(ConstantsSt.upcomingString, systemImage: ConstantsSt.upcomingIconString)
            {
                UpcomingView()
            }
            Tab(ConstantsSt.searchString, systemImage: ConstantsSt.searchIconString)
            {
                SearchView()             
            }
            Tab("Saved", systemImage: ConstantsSt.savedIconString)
            {
                SavedTitlesView()
            }
        }
    }
}

#Preview
{
    ContentView()
}

