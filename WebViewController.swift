import UIKit

class WebViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        }
    
    @IBAction func didGobutton(sender: AnyObject) {
        
        if textField.text == "" {
        return
        
    }
        guard let text: String = textField.text else {
        
        return
        }
        
        infoLabel.hidden = true
        
        if text.rangeOfString(".") != nil {
            var finalString :String = text.lowercaseString
            if finalString.rangeOfString("http://") == nil {
             finalString = "http://\(finalString)"
            
            }
        self.loadURL(finalString)
        } else {
        
        let searchString = text.stringByReplacingOccurrencesOfString(" ", withString: "+")
        let finalString = "https://www.google.com/search?q=\(searchString)"
        self.loadURL(finalString)
        }
    
    }
    
    
    func loadURL(str:String) {
    
    let url = NSURL(string: str)!
    let request = NSURLRequest(URL: url)
    webView.loadRequest(request)
    
    }
    
    
    @IBAction func goBack(sender: AnyObject) {
        webView.goBack()
    }
    

    @IBAction func goForward(sender: AnyObject) {
        webView.goForward()
    }
    
    
}



