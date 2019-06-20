//
//  DistanceStream.swift
//  Strive
//
//  Created by Uday Pandey on 20/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
import Foundation

public enum StreamResolutionType: String, Codable {
    case high
    case low
    case medium
}

public enum StreamSeriesType: String, Codable {
    case distance
    case time
}

public struct DistanceStream: Codable {
    public let data: [Double]
    public let originalSize: Int
    public let resolution: StreamResolutionType
    public let seriesType: StreamSeriesType

    private enum CodingKeys: String, CodingKey {
        case data
        case originalSize = "original_size"
        case resolution
        case seriesType = "series_type"
    }
}
