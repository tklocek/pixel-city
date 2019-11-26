//
//  Constants.swift
//  pixel-city
//
//  Created by Tomek Klocek on 2019-11-26.
//  Copyright © 2019 Tomek Klocek. All rights reserved.
//

import Foundation

let apiKey = "3cb92bf0182558dc7a41459a13d10559"


func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    
    let url = "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
    
    return url
}


