import UIKit
import CoreLocation
import MapKit


class SeventhViewController: UIViewController, MKMapViewDelegate  {
    
    @IBOutlet weak var mapView: MKMapView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        
        camerasteup()

    
    }


    private func camerasteup(){
        let camera = MKMapCamera(lookingAtCenterCoordinate: CLLocationCoordinate2D(latitude: 50.716098, longitude: -1.875780), fromDistance: 1400, pitch: 50, heading: 180)
        mapView.setCamera(camera, animated: true)
    }
    
    
    
    
    
    @IBAction func segmentedControl(sender: AnyObject) {
    
    
        switch sender.selectedSegmentIndex {
        
        case 1:
            
            mapView.mapType = MKMapType.SatelliteFlyover
            
        
        case 2:
            
            mapView.mapType = MKMapType.HybridFlyover
            
            
        default:
            
            mapView.mapType = MKMapType.Standard
            
            
            
        }

       camerasteup()
    
    
    }
    
   
    
    @IBAction func trafficButton(sender: AnyObject) {
    
        
        mapView.showsTraffic = !mapView.showsTraffic
        
        if mapView.showsTraffic == true {
        sender.setTitle("Hide Traffic?", forState: UIControlState.Normal)
        

        } else {
        
        sender.setTitle("Show Traffic?", forState: UIControlState.Normal)
        
        
        }
        
    
    }
    
    
    @IBAction func compassButton(sender: AnyObject) {
    
        
        mapView.showsCompass = !mapView.showsCompass
        
        
        if mapView.showsCompass == true {
            sender.setTitle("Hide Compass?", forState: UIControlState.Normal)
            
        } else {
            
            sender.setTitle("Show Compass?", forState: UIControlState.Normal)
            
        }
    
        
    }




}
