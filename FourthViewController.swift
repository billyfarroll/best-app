import UIKit


class FourthViewController: UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        imageView.animationImages = [

            UIImage(named: "Athletic logo")!,
            UIImage(named: "Bournemouth Athletics")!,
            UIImage(named: "Bournemouth Athletic's2")!,
            UIImage(named: "you will")!,
            UIImage(named: "Have a")!,
            UIImage(named: "Great time")!
            
        ]
        
        imageView.animationDuration = 6
        imageView.startAnimating()

        
    
    }
    

}
