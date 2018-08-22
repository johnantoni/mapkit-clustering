/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A subclass of MKMarkerAnnotationView that configures itself for representing a Bike.
*/
import MapKit
import UIKit

class BikeView: MKMarkerAnnotationView {

//    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
//        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
//        self.canShowCallout = true
//        self.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
//    }

    override var annotation: MKAnnotation? {
        willSet {
            if let bike = newValue as? Bike {
                clusteringIdentifier = "bike"
              
                canShowCallout = true
                rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
              
                if bike.type == .unicycle {
                    markerTintColor = UIColor(named: "unicycleCol")
                    glyphImage = UIImage(named: "unicycle")
                    displayPriority = .defaultLow
                } else {
                    markerTintColor = UIColor(named: "tricycleCol")
                    glyphImage = UIImage(named: "tricycle")
                    displayPriority = .defaultHigh
                }
            }
        }
    }

}
