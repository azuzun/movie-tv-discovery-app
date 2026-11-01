# Movie & TV Discovery App

A native iOS app for discovering movies and TV shows, exploring upcoming releases, watching trailers, and keeping a personal collection of saved titles. Built with SwiftUI and SwiftData, with content from The Movie Database (TMDB) and trailer search through the YouTube Data API.

## Features

- **Discover popular titles:** Browse trending and top-rated movies and TV shows in horizontal collections, with a featured movie on the home screen.
- **Explore upcoming releases:** View upcoming movies and open their details.
- **Search movies and TV:** Switch between media types and search with a 500 ms debounce.
- **Watch trailers:** Open a title to view its synopsis and an embedded YouTube trailer.
- **Save titles locally:** Keep title information in a SwiftData collection and remove entries when needed.
- **Follow request progress:** Loading indicators and error messages reflect the state of network requests.

## Technology

| Area | Implementation |
| --- | --- |
| Interface | SwiftUI, NavigationStack, lazy stacks and grids |
| State | Observable view models using the Observation framework |
| Networking | URLSession, async/await, concurrent home-screen requests |
| Data decoding | Decodable models with snake-case key conversion |
| Local persistence | SwiftData model container and queries |
| Trailers | YouTube Data API search and a WebKit player |
| Content | TMDB movie and TV endpoints and poster images |

## Getting started

### Requirements

- Xcode 26.4 or later with an appropriate iOS SDK.
- An iPhone or iPad simulator, or a device running iOS 26.4 or later. The project currently targets iOS 26.4.
- A TMDB API key and a Google API key with YouTube Data API v3 enabled.

### Configure API access

1. Clone this repository and open `MovieTVDiscovery.xcodeproj`.
2. Copy the sample configuration into the app directory:

   ```sh
   cp Config/APIConfig.example.json MovieTVDiscovery/APIConfig.json
   ```

3. Edit `MovieTVDiscovery/APIConfig.json` and replace `YOUR_TMDB_API_KEY` and `YOUR_YOUTUBE_API_KEY` with your own keys.
4. Select the `MovieTVDiscovery` scheme and an iOS simulator, then run the app. For a physical device, choose your development team under **Signing & Capabilities** and use a unique bundle identifier if required.

The app loads `APIConfig.json` from its bundle. Xcode's synchronized app directory includes the local configuration as a resource. The real configuration is excluded from Git; only the placeholder example is tracked. Restrict API keys to their intended services and use a backend for credentials that must remain secret in a distributed app.

## Project structure

```text
MovieTVDiscovery.xcodeproj/   Xcode project and build settings
MovieTVDiscovery/
  MovieTVDiscoveryApp.swift   App entry point and SwiftData container
  ContentView.swift           Home, Upcoming, Search, and Saved tabs
  HomeView.swift              Featured title and discovery collections
  UpcomingView.swift          Upcoming movie list
  SearchView.swift            Movie and TV search
  TitleDetailView.swift       Synopsis, trailer, and save action
  SavedTitlesView.swift       Locally saved title collection
  ViewModel.swift             Discovery and trailer request state
  SearchViewModel.swift       Search results and errors
  DataFetcher.swift           API requests and JSON decoding
  Title.swift                 Decodable SwiftData model
  APIConfig.swift             Bundled configuration loader
  Assets.xcassets/            App colors and asset catalog
Config/
  APIConfig.example.json     Configuration template without credentials
```

## Scope

This is a portfolio and learning project focused on native iOS interfaces, asynchronous API integration, and local persistence. Saved entries contain title metadata; the app does not download video or provide full-length movie or TV streaming. Live discovery and trailer playback require an internet connection and configured API access.

## Credits

Developed by **Ahmet Zeki Uzun**.

Movie and TV metadata and poster images are provided by **The Movie Database (TMDB)**. This project uses the TMDB API but is not endorsed or certified by TMDB. Trailers are served through **YouTube**; media rights remain with their respective owners.
