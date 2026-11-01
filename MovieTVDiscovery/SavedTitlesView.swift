//
//  SavedTitlesView.swift
//  Movie & TV Discovery App
//
//  Created by Ahmet Zeki Uzun on 7.06.2026.
//

import SwiftUI
import SwiftData

struct SavedTitlesView: View
{
    @Query(sort: \Title.title) var savedTitles: [Title]
    
    var body: some View
    {
        NavigationStack
        {
            if savedTitles.isEmpty
            {
                Text("No Saved Titles")
                    .padding()
                    .font(.title3)
                    .bold()
            }
            else
            {
                VerticalListView(titles: savedTitles, canDelete: true)
            }
        }
    }
}

#Preview {
    SavedTitlesView()
}

// @Query(sort: \Title.title) var savedTitles: [Title]
//                 VerticalListView(titles: savedTitles, canDelete: true)
