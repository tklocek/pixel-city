//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Tomek Klocek on 2019-11-20.
//  Copyright © 2019 Tomek Klocek. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
    
    
    
}
