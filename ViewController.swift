import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDataSource {
    
    let topThreeTeams = [
    
    ("Southampton"),
    ("Bournemouth"),
    ("Chelsea")
    ]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topThreeTeams.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell1 = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        let (teamTitle) = topThreeTeams [indexPath.row]
        
        cell1.textLabel?.text = teamTitle
        return cell1
    }
    
    let teamArray = ["Arsenal", "Aston Villa", "Bournemouth","Chelsea","Crystal Palace", "Everton","Leciester City", "Liverpool", "Manchester City", "Manchester United",  "Norwich", "Newcastle", "Watford", "Southampton","Spurs", "Stoke City", "Swansea", "Sunderland", "West Brom", "West Ham" ]
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
        return teamArray.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teamArray[row]
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackgroundColour: UIColor
        
        switch row {
        case 0:
            newBackgroundColour = UIColor.redColor()
        case 1:
            newBackgroundColour = UIColor.purpleColor()
        case 2:
            newBackgroundColour = UIColor.redColor()
        case 3:
            newBackgroundColour = UIColor.blueColor()
        case 4:
            newBackgroundColour = UIColor.purpleColor()
        case 5:
            newBackgroundColour = UIColor.blueColor()
        case 6:
            newBackgroundColour = UIColor.blueColor()
        case 7:
            newBackgroundColour = UIColor.redColor()
        case 8:
            newBackgroundColour = UIColor.blueColor()
        case 9:
            newBackgroundColour = UIColor.redColor()
        case 10:
            newBackgroundColour = UIColor.yellowColor()
        case 11:
            newBackgroundColour = UIColor.whiteColor()
        case 12:
            newBackgroundColour = UIColor.yellowColor()
        case 13:
            newBackgroundColour = UIColor.redColor()
        case 14:
            newBackgroundColour = UIColor.whiteColor()
        case 15:
            newBackgroundColour = UIColor.redColor()
        case 16:
            newBackgroundColour = UIColor.whiteColor()
        case 17:
            newBackgroundColour = UIColor.redColor()
        case 18:
            newBackgroundColour = UIColor.whiteColor()
        case 19:
            newBackgroundColour = UIColor.purpleColor()
        default:
            newBackgroundColour = UIColor.whiteColor()
            
            }
        
        self.view.backgroundColor = newBackgroundColour
    }
    
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var label1: UILabel!

    @IBAction func goButton(sender: AnyObject) {
        
        label1.text = "You've chosen " + textField1.text! + "!"
        self.textField1.resignFirstResponder()
        
        
        
        
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

