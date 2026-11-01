//
//  UpcomingView.swift
//  Movie & TV Discovery App
//
//  Created by Ahmet Zeki Uzun on 4.06.2026.
//

import SwiftUI

struct UpcomingView: View
{
    let viewModel = ViewModel()
    
    var body: some View
    {
        NavigationStack         
        {
            GeometryReader
            {
                geo in
                switch viewModel.upcomingStatus
                {
                case .notStarted:
                    EmptyView()
                    
                case .fetching:
                    ProgressView()
                        .frame(width: geo.size.width, height: geo.size.height)
                    
                case .success:
                    VerticalListView(titles: viewModel.upcomingMovies, canDelete: false)
                    
                case .failed(let underlyingError):
                    Text(underlyingError.localizedDescription)
                        .errorMessage()
                        .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .task                       
            {
                await viewModel.getUpcomingMovies()
            }
        }
    }
}

#Preview
{
    UpcomingView()
}
