//
//  YoutubeSearchResponse.swift
//  Movie & TV Discovery App
//
//  Created by Ahmet Zeki Uzun on 31.05.2026.
//

import Foundation

struct YoutubeSearchResponse: Codable
{
    let items: [ItemProperties]?
}

struct ItemProperties: Codable
{
    let id: IdProperties?
}

struct IdProperties: Codable
{
    let videoId: String?
}
