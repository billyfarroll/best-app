import UIKit
import MapKit
import CoreLocation

class ThirdViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var bournemouthMap: MKMapView!
    
    let locationManager = CLLocationManager()

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
        let chapelGateRegion = CLCircularRegion(center: chapelGate, radius: 50, identifier: "Chapel Gate")
        locationManager.startMonitoringForRegion(chapelGateRegion)

        let bournemouthAthleticClub = CLLocationCoordinate2D(latitude: 50.7345638 , longitude: -1.8422774 )
        let bournemouthAthleticClubRegion = CLCircularRegion(center: bournemouthAthleticClub, radius: 50, identifier: "Athletic club")
        locationManager.startMonitoringForRegion(bournemouthAthleticClubRegion)
        
        let argyllBowlingClub = CLLocationCoordinate2D(latitude: 50.7132 , longitude: -1.89552 )
        let argyllBowlingClubRegion = CLCircularRegion(center: argyllBowlingClub, radius: 50, identifier: "Argyll Bowling Club")
        locationManager.startMonitoringForRegion(argyllBowlingClubRegion)
        
        
    }



    func locationManager(manager: CLLocationManager, didEnterRegion region: CLRegion) {
        
        print("Entering \(region.identifier)")
        
        
        if region.identifier == "Chapel Gate" {
            
            let refreshAlert = UIAlertController(title: region.identifier, message: "You've found Chapel Gate ", preferredStyle: UIAlertControllerStyle.Alert)
            
            refreshAlert.addAction(UIAlertAction(title: "More Info", style: .Default, handler: { (action: UIAlertAction!) in
                self.performSegueWithIdentifier("Next", sender: self)
                
            }))
            
            refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction!) in
                
                refreshAlert .dismissViewControllerAnimated(true, completion: nil)
                
                
            }))
            
            presentViewController(refreshAlert, animated: true, completion: nil)
            
        }
        
        if region.identifier == "Athletic club" {
            
            let refreshAlert = UIAlertController(title: region.identifier, message: "You've found Bournemouth Athletic's club ", preferredStyle: UIAlertControllerStyle.Alert)
            
            refreshAlert.addAction(UIAlertAction(title: "More Info", style: .Default, handler: { (action: UIAlertAction!) in
                self.performSegueWithIdentifier("Next", sender: self)
                
            }))
            
            refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction!) in
                
                refreshAlert .dismissViewControllerAnimated(true, completion: nil)
                
                
            }))
            
            presentViewController(refreshAlert, animated: true, completion: nil)
            
        }
        
        if region.identifier == "Argyll Bowling Club" {
            
            let refreshAlert = UIAlertController(title: region.identifier, message: "You've found Argyll Bowling Club ", preferredStyle: UIAlertControllerStyle.Alert)
            
            refreshAlert.addAction(UIAlertAction(title: "More Info", style: .Default, handler: { (action: UIAlertAction!) in
                self.performSegueWithIdentifier("Next", sender: self)
                
            }))
            
            refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction!) in
                
                refreshAlert .dismissViewControllerAnimated(true, completion: nil)
                
                
            }))
            
            presentViewController(refreshAlert, animated: true, completion: nil)
            
        }

        
        
        
    }
    




}


