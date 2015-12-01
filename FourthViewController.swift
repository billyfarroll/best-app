import UIKit


class FourthViewController: UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        imageView.animationImages = [
            
            UIImage(named: "Athletic logo")!,
            UIImage(named: "Bournemouth Athletics")!,
            UIImage(named: "Bournemouth Athletic's2")!
            
        ]
        
        imageView.animationDuration = 4
        imageView.startAnimating()

        
    
    }
    

}
