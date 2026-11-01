//
//  MovieTVDiscoveryApp.swift
//  Movie & TV Discovery App
//
//  Created by Ahmet Zeki Uzun on 15.05.2026.
//

import SwiftUI
import SwiftData       

@main
struct MovieTVDiscoveryApp: App
{
    var body: some Scene
    {
        WindowGroup
        {
            ContentView()
        }
        .modelContainer(for: Title.self)
    }
}
