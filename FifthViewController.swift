import UIKit


class FifthViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.animationImages = [
            
            UIImage(named: "chapel gate1")!,
            UIImage(named: "chapel gate2")!,
            UIImage(named: "chapel gate3")!
            
        ]
        
        imageView.animationDuration = 4
        imageView.startAnimating()
        
        
        
    }

    
}
