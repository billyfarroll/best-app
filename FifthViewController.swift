import UIKit


class FifthViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.animationImages = [
            
            UIImage(named: "chapel gate1")!,
            UIImage(named: "chapel gate2")!,
            UIImage(named: "chapel gate3")!,
            UIImage(named: "you will")!,
            UIImage(named: "Have a")!,
            UIImage(named: "Great time")!
            
        ]
        
        imageView.animationDuration = 6
        imageView.startAnimating()
        
        
        
    }

    
}
