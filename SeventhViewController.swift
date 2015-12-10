import UIKit
import MapKit


class SeventhViewController: UIViewController, MKMapViewDelegate  {
    
    
    @IBOutlet weak var mapView: MKMapView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        let bournemouth = MKCoordinateRegionMake(CLLocationCoordinate2D(latitude: 50.716098, longitude: -1.875780), MKCoordinateSpan(latitudeDelta: 0.1766154, longitudeDelta: 0153035))
        
        
        mapView.setRegion(bournemouth, animated: true)
        
        
        camerasteup()
        
        
        
    
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    private func camerasteup(){
    
    mapView.camera.altitude = 1400
    mapView.camera.pitch = 50
    mapView.camera.heading = 180
        
    
    }
    
    
    
    @IBAction func segmentedControlChange(sender: AnyObject) {
        
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
    
    
    @IBAction func trafficBtn(sender: AnyObject) {
        
        mapView.showsTraffic = !mapView.showsTraffic
        
        if mapView.showsTraffic == true {
        sender.setTitle("Hide Traffic?", forState: UIControlState.Normal)
        

        } else {
        
        sender.setTitle("Show Traffic", forState: UIControlState.Normal)
        
        
        }
        
    }
    
    

    @IBAction func compassBtn(sender: AnyObject) {
        
        mapView.showsCompass = !mapView.showsCompass
        
        
        if mapView.showsCompass == true {
        sender.setTitle("Hide Compass?", forState: UIControlState.Normal)
        
        } else {
        
        sender.setTitle("Show Compass?", forState: UIControlState.Normal)
        
        }
            
    }












}
