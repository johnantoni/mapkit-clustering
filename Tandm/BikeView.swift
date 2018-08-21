/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A subclass of MKMarkerAnnotationView that configures itself for representing a Bike.
*/
import MapKit

class BikeView: MKMarkerAnnotationView {

    override var annotation: MKAnnotation? {
        willSet {
            if let bike = newValue as? Bike {
                clusteringIdentifier = "bike"
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
