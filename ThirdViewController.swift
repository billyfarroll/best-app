import UIKit
import MapKit
import CoreLocation

class ThirdViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var bournemouthMap: MKMapView!

    @IBAction func segmentControl(sender: UISegmentedControl) {
       
        
        switch (sender.selectedSegmentIndex) {
            
        case 0:
            bournemouthMap.mapType = .Standard
            
        case 1:
            bournemouthMap.mapType = .Satellite
            
        default:
            bournemouthMap.mapType = .Hybrid
            
        }

    }

    let bournemouthLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bournemouthLocationManager.requestAlwaysAuthorization()
            bournemouthLocationManager.delegate = self
            bournemouthMap.setUserTrackingMode(.Follow, animated: true)
        
        
        let chapelGate = CLLocationCoordinate2D(latitude: 50.7823501505709 , longitude: -1.85909584510079 )
        
        let chapelGateRegion = CLCircularRegion(center: chapelGate, radius: 50, identifier: "Chapel-Gate")
        
        let bournemouthAthleticClub = CLLocationCoordinate2D(latitude: 50.7345638 , longitude: -1.8422774 )
        
        let bournemouthAthleticClubRegion = CLCircularRegion(center: bournemouthAthleticClub, radius: 50, identifier: "Bournemouth Athletic Club")
        
        let argyllBowlingClub = CLLocationCoordinate2D(latitude: 50.7132 , longitude: -1.89552 )
        
        let argyllBowlingClubRegion = CLCircularRegion(center: argyllBowlingClub, radius: 50, identifier: "Argyll Bowling Club")
        
        
        
    }

}
