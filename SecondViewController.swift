import UIKit
import MapKit
import CoreLocation

class SecondViewController: UIViewController {


    @IBOutlet weak var myMap: MKMapView!
    
    @IBOutlet weak var imageView: UIImageView!
    

    let locationManger = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManger.requestAlwaysAuthorization()
        locationManger.delegate = self
        myMap.setUserTrackingMode(.Follow, animated: true)
        
        let southampton = CLLocationCoordinate2DMake(50.9097004 , -1.4043509 )
        let southamptonRegion = CLCircularRegion(center: southampton, radius: 50 , identifier: "Southampton FC")
        locationManger.startMonitoringForRegion(southamptonRegion)
        
        let bournemouthPier = CLLocationCoordinate2DMake(50.716098 , -1.875780 )
        let bournemouthPierRegion = CLCircularRegion(center: bournemouthPier, radius: 50 , identifier: "Bournemouth Pier")
        locationManger.startMonitoringForRegion(bournemouthPierRegion)
        
        let arsenal = CLLocationCoordinate2DMake(51.55865 , -0.10743 )
        let arsenalRegion = CLCircularRegion(center: arsenal, radius: 50 , identifier: "Arsenal FC")
        locationManger.startMonitoringForRegion(arsenalRegion)
        
        let astonVilla = CLLocationCoordinate2DMake(53.19753 , -3.040541)
        let astonVillaRegion = CLCircularRegion(center: astonVilla, radius: 50 , identifier: "Aston Villa FC")
        locationManger.startMonitoringForRegion(astonVillaRegion)
        
        let chelsea = CLLocationCoordinate2DMake(51.485093 , -0.174936)
        let chelseaRegion = CLCircularRegion(center: chelsea, radius: 50 , identifier: "Chelsea FC")
        locationManger.startMonitoringForRegion(chelseaRegion)
        
        let crystalPalace = CLLocationCoordinate2DMake(51.4198825 , -0.0785415)
        let crystalPalaceRegion = CLCircularRegion(center: crystalPalace, radius: 50 , identifier: "Crystal Palace FC")
        locationManger.startMonitoringForRegion(crystalPalaceRegion)
        
        let everton = CLLocationCoordinate2DMake(50.7459045 , -1.5919542)
        let evertonRegion = CLCircularRegion(center: everton, radius: 50 , identifier: "Everton FC")
        locationManger.startMonitoringForRegion(evertonRegion)
        
        let leciester = CLLocationCoordinate2DMake(52.6368778 , -1.1397592)
        let leciesterRegion = CLCircularRegion(center: leciester, radius: 50 , identifier: "Leciester FC")
        locationManger.startMonitoringForRegion(leciesterRegion)
        
        let norwich = CLLocationCoordinate2DMake(52.6308859 , 1.297355)
        let norwichRegion = CLCircularRegion(center: norwich, radius: 50 , identifier: "Norwich FC")
        locationManger.startMonitoringForRegion(norwichRegion)
        
        let newcastle = CLLocationCoordinate2DMake(54.9778404 ,-1.6129165)
        let newcastleRegion = CLCircularRegion(center: newcastle, radius: 50 , identifier: "Newcastle FC")
        locationManger.startMonitoringForRegion(newcastleRegion)
        
        let manchesterUnited = CLLocationCoordinate2DMake(53.479251 , -2.247926)
        let manchesterUnitedRegion = CLCircularRegion(center: manchesterUnited, radius: 50 , identifier: "Manchester United FC")
        locationManger.startMonitoringForRegion(manchesterUnitedRegion)
        
        
        let manchesterCity = CLLocationCoordinate2DMake(53.479251 , -2.247926)
        let manchesterCityRegion = CLCircularRegion(center: manchesterCity, radius: 50 , identifier: "Manchester City FC")
        locationManger.startMonitoringForRegion(manchesterCityRegion)

        let liverpool = CLLocationCoordinate2DMake(53.41154,-2.990116)
        let liverpoolRegion = CLCircularRegion(center: liverpool, radius: 50 , identifier: "Liverpool FC")
        locationManger.startMonitoringForRegion(liverpoolRegion)

        let tottenham = CLLocationCoordinate2DMake(51.603662 ,-0.07573)
        let tottenhamRegion = CLCircularRegion(center: tottenham, radius: 50 , identifier: "Tottenham Hotspur FC")
        locationManger.startMonitoringForRegion(tottenhamRegion)

        let stokeCity = CLLocationCoordinate2DMake(53.002668 ,-2.179404)
        let stokeCityRegion = CLCircularRegion(center: stokeCity, radius: 50 , identifier: "Stoke City FC")
        locationManger.startMonitoringForRegion(stokeCityRegion)

        let swansea = CLLocationCoordinate2DMake(51.62144 ,-3.943646)
        let swanseaRegion = CLCircularRegion(center: swansea, radius: 50 , identifier: "Swansea City FC")
        locationManger.startMonitoringForRegion(swanseaRegion)
        
        let sunderland = CLLocationCoordinate2DMake( 54.906869,-1.383801)
        let sunderlandRegion = CLCircularRegion(center: sunderland, radius: 50 , identifier: "Sunderland FC")
        locationManger.startMonitoringForRegion(sunderlandRegion)
        
        let westBrom = CLLocationCoordinate2DMake( 52.517664,-1.995159)
        let westBromRegion = CLCircularRegion(center: westBrom, radius: 50 , identifier: "West Brom FC")
        locationManger.startMonitoringForRegion(westBromRegion)
        
        let watford = CLLocationCoordinate2DMake(51.656489,-0.39032)
        let watfordRegion = CLCircularRegion(center: watford, radius: 50 , identifier: "Watford FC")
        locationManger.startMonitoringForRegion(watfordRegion)
        
        let westHam = CLLocationCoordinate2DMake( 51.538265,0.014525)
        let westHamRegion = CLCircularRegion(center: westHam, radius: 50 , identifier: "West Ham City FC")
        locationManger.startMonitoringForRegion(westHamRegion)

        
    }
 
    
    

}

extension SecondViewController: CLLocationManagerDelegate {


    func locationManager(manager: CLLocationManager, didEnterRegion region: CLRegion) {
        imageView.image = UIImage(named: region.identifier)
        
        print("Entering \(region.identifier)")
        
    }
    
    
    func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("Leaving \(region.identifier)")
    }
    
    
    

}



