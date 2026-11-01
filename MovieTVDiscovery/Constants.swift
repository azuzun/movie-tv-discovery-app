//
//  Constants.swift
//  Movie & TV Discovery App
//
//  Created by Ahmet Zeki Uzun on 16.05.2026.
//

import Foundation
import SwiftUI

struct ConstantsSt
{
    static let homeString       = "Home"
    static let upcomingString   = "Upcoming"
    static let searchString     = "Search"
    static let saveString   = "Save"
    static let playString       = "Watch Trailer"
    static let trendingMovieString  = "Trending Movies"
    static let trendingTVString     = "Trending TV"
    static let topRatedMovieString  = "Top Rated Movies"
    static let topRatedTVString     = "Top Rated TV"
    static let movieSearchString    = "Movie Search"
    static let tvSearchString       = "TV Search"
    static let moviePlaceHolderString   = "Search for a Movie"
    static let tvPlaceHolderString      = "Search for a TV Show"

    static let homeIconString       = "house"
    static let upcomingIconString   = "play.circle"
    static let searchIconString     = "magnifyingglass"
    static let savedIconString   = "bookmark"
    static let tvIconString         = "tv"
    static let movieIconString      = "movieclapper"
    
    static let testTitleURL     = "https://image.tmdb.org/t/p/w500/nnl6OWkyPpuMm595hmAxNW3rZFn.jpg"
    static let testTitleURL2    = "https://image.tmdb.org/t/p/w500/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg"
    static let testTitleURL3    = "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg"
    
    static let posterURLStart = "https://image.tmdb.org/t/p/w500"    
    
    static func addPosterPath(to titles: inout[Title])
    {
        for index in titles.indices
        {
            if let path = titles[index].posterPath
            {
                titles[index].posterPath = ConstantsSt.posterURLStart + path
            }
        }
    }
}

enum YoutubeURLStrings: String            
{
    case trailer = "trailer"
    case queryShorten = "q"
    case space = " "
    case key = "key"
}

extension Text
{
    func ghostButton() -> some View
    {
        self
            .frame(minWidth: 100, minHeight: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background
        {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(.buttonBorder, lineWidth: 5)
        }
    }
}

extension Text {                               
    func errorMessage() -> some View {
        self
            .foregroundStyle(.red)
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 10))
    }
}
