import UIKit
import MapKit
import CoreLocation

class SecondViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!

    @IBOutlet weak var imageView: UIImageView!
   
    @IBAction func segmentedControlAction(sender: UISegmentedControl) {
        
        switch (sender.selectedSegmentIndex) {
        
        case 0:
            myMap.mapType = .Standard
            
        case 1:
            myMap.mapType = .Satellite
        
        default:
            myMap.mapType = .Hybrid
        
        }
    }
    
    
    
    
    let locationManger = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        locationManger.requestAlwaysAuthorization()
        locationManger.delegate = self
        myMap.setUserTrackingMode(.Follow, animated: true)
        
        let bournemouthPier = CLLocationCoordinate2D(latitude: 50.716098 , longitude: -1.875780 )
        let bournemouthPierRegion = CLCircularRegion(center: bournemouthPier, radius: 50 , identifier: "Bournemouth.png")
        locationManger.startMonitoringForRegion(bournemouthPierRegion)
        
        let arsenal = CLLocationCoordinate2D(latitude: 51.55865 , longitude:  -0.10743 )
        let arsenalRegion = CLCircularRegion(center: arsenal, radius: 50 , identifier: "arsenal.png")
        locationManger.startMonitoringForRegion(arsenalRegion)
        
        let astonVilla = CLLocationCoordinate2D(latitude: 53.19753 , longitude: -3.040541)
        let astonVillaRegion = CLCircularRegion(center: astonVilla, radius: 50 , identifier: "aston.png")
        locationManger.startMonitoringForRegion(astonVillaRegion)
        
        let chelsea = CLLocationCoordinate2D(latitude: 51.485093 , longitude: -0.174936)
        let chelseaRegion = CLCircularRegion(center: chelsea, radius: 50 , identifier: "chelsea.png")
        locationManger.startMonitoringForRegion(chelseaRegion)
        
        let crystalPalace = CLLocationCoordinate2D(latitude: 51.4198825 ,longitude:  -0.0785415)
        let crystalPalaceRegion = CLCircularRegion(center: crystalPalace, radius: 50 , identifier: "CrystalPalace.png")
        locationManger.startMonitoringForRegion(crystalPalaceRegion)
        
        let everton = CLLocationCoordinate2D(latitude: 53.4160 ,longitude: -2.990117)
        let evertonRegion = CLCircularRegion(center: everton, radius: 50 , identifier: "Everton.png")
        locationManger.startMonitoringForRegion(evertonRegion)
        
        let leciester = CLLocationCoordinate2D(latitude: 52.6368778 ,longitude: -1.1397592)
        let leciesterRegion = CLCircularRegion(center: leciester, radius: 50 , identifier: "leciester.png")
        locationManger.startMonitoringForRegion(leciesterRegion)
        
        let norwich = CLLocationCoordinate2D(latitude: 52.6308859 ,longitude: 1.297355)
        let norwichRegion = CLCircularRegion(center: norwich, radius: 50 , identifier: "NorwichCity.png")
        locationManger.startMonitoringForRegion(norwichRegion)
        
        let newcastle = CLLocationCoordinate2D(latitude: 54.9778404 ,longitude:  -1.6129165)
        let newcastleRegion = CLCircularRegion(center: newcastle, radius: 50 , identifier: "NewcastleUnited.png")
        locationManger.startMonitoringForRegion(newcastleRegion)
        
        let manchesterUnited = CLLocationCoordinate2D(latitude: 53.479301 ,longitude:  -2.247926)
        let manchesterUnitedRegion = CLCircularRegion(center: manchesterUnited, radius: 50 , identifier: "united.png")
        locationManger.startMonitoringForRegion(manchesterUnitedRegion)
        
        
        let manchesterCity = CLLocationCoordinate2D(latitude: 53.479251 ,longitude:  -2.247926)
        let manchesterCityRegion = CLCircularRegion(center: manchesterCity, radius: 50 , identifier: "ManchesterCity.png")
        locationManger.startMonitoringForRegion(manchesterCityRegion)

        let liverpool = CLLocationCoordinate2D(latitude: 53.41154,longitude:  -2.990116)
        let liverpoolRegion = CLCircularRegion(center: liverpool, radius: 50 , identifier: "liverpool.png")
        locationManger.startMonitoringForRegion(liverpoolRegion)

        let tottenham = CLLocationCoordinate2D(latitude: 51.603662 ,longitude:  -0.07573)
        let tottenhamRegion = CLCircularRegion(center: tottenham, radius: 50 , identifier: "spurs.png")
        locationManger.startMonitoringForRegion(tottenhamRegion)
        
        let southampton = CLLocationCoordinate2D( latitude: 50.9097004 , longitude: -1.4043509 )
        let southamptonRegion = CLCircularRegion(center: southampton, radius: 50 , identifier: "Southampton.png")
        locationManger.startMonitoringForRegion(southamptonRegion)

        let stokeCity = CLLocationCoordinate2D(latitude: 53.002668 ,longitude:  -2.179404)
        let stokeCityRegion = CLCircularRegion(center: stokeCity, radius: 50 , identifier: "StokeCity.png")
        locationManger.startMonitoringForRegion(stokeCityRegion)

        let swansea = CLLocationCoordinate2D(latitude: 51.62144 ,longitude:  -3.943646)
        let swanseaRegion = CLCircularRegion(center: swansea, radius: 50 , identifier: "Swansea.png")
        locationManger.startMonitoringForRegion(swanseaRegion)
        
        let sunderland = CLLocationCoordinate2D(latitude: 54.906869,longitude:  -1.383801)
        let sunderlandRegion = CLCircularRegion(center: sunderland, radius: 50 , identifier: "Sunderland.jpg")
        locationManger.startMonitoringForRegion(sunderlandRegion)
        
        let westBrom = CLLocationCoordinate2D(latitude: 52.517664,longitude:  -1.995159)
        let westBromRegion = CLCircularRegion(center: westBrom, radius: 50 , identifier: "WestBrom.png")
        locationManger.startMonitoringForRegion(westBromRegion)
        
        let watford = CLLocationCoordinate2D(latitude: 51.656489,longitude:  -0.39032)
        let watfordRegion = CLCircularRegion(center: watford, radius: 50 , identifier: "watford.png")
        locationManger.startMonitoringForRegion(watfordRegion)
        
        let westHam = CLLocationCoordinate2D(latitude: 51.538265,longitude:  0.014525)
        let westHamRegion = CLCircularRegion(center: westHam, radius: 50 , identifier: "WestHam.png")
        locationManger.startMonitoringForRegion(westHamRegion)

        
    }
 
    
    

}

extension SecondViewController: CLLocationManagerDelegate {


    func locationManager(manager: CLLocationManager, didEnterRegion region: CLRegion) {
        
        imageView.image = UIImage(named: region.identifier)
        print("Entering \(region.identifier)")
        
    
        let refreshAlert = UIAlertController(title: "Bournemouth!!", message: "You've found Bournemouth AFC!", preferredStyle: UIAlertControllerStyle.Alert)
        
        refreshAlert.addAction(UIAlertAction(title: "More Info", style: .Default, handler: { (action: UIAlertAction!) in
            self.performSegueWithIdentifier("Next", sender: self)
            
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction!) in
            
            refreshAlert .dismissViewControllerAnimated(true, completion: nil)
            
            
        }))
        
        presentViewController(refreshAlert, animated: true, completion: nil)

       }
    
    
    }


    func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion) {
        
//        imageView.image = nil
//        print("Leaving \(region.identifier)")
        
        
        }


    






    
    






