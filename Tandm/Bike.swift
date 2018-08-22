/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A concrete implementation of MKAnnotation representing one bike.
*/

import MapKit

class Bike: MKPointAnnotation {

    enum BikeType: Int {
        case unicycle
        case tricycle
    }
    
    var type: BikeType = .tricycle
  
    var identifier: String = "myidentifier"
    
    class func bikes(fromDictionaries dictionaries: [[String: NSNumber]]) -> [Bike] {
        let bikes = dictionaries.map { item -> Bike in
            let bike = Bike()
            bike.coordinate = CLLocationCoordinate2DMake(item["lat"]!.doubleValue, item["long"]!.doubleValue)
            bike.type = BikeType(rawValue: item["type"]!.intValue)!
            bike.title = "Hello"
            bike.subtitle = "Sub"
            return bike
        }
        return bikes
    }

}
