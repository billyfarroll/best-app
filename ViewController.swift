import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDataSource {
    
    var teams = [Team]()
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        let team = teams[indexPath.row]
        
        cell.backgroundColor = team.color
        cell.textLabel?.text = team.name
        return cell
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teams.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let team = teams[row]
        return team.name
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let team = teams[row]
        self.view.backgroundColor = team.color
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
        
        let bournemouth = Team(name: "Bournemouth", color: UIColor(colorLiteralRed: 255, green: 255, blue: 255, alpha: 1.0), manager: "Howe", postion: 18)
        teams.append(bournemouth)
        
        let manUtd = Team(name: "Manchester Utd", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Gaal", postion: 4)
        teams.append(manUtd)
        
        let chelsea = Team(name: "Chelsea", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Mourhino", postion: 16)
        teams.append(chelsea)
        
        let southampton = Team(name: "Southampton", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Koeman", postion: 7)
        teams.append(southampton)
        
        let arsenal = Team(name: "Arsenal", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Wenger", postion: 2)
        teams.append(arsenal)
        
        let astonvilla = Team(name: "Aston Villa", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Garde", postion: 20)
        teams.append(astonvilla)
        
        let everton = Team(name: "Everton", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Martinez", postion: 9)
        teams.append(everton)
        
        let crystalpalace = Team(name: "Crystal Palace", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Pardew", postion: 8)
        teams.append(crystalpalace)
        
        let leciester = Team(name: "Leciester", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Raneri", postion: 3)
        teams.append(leciester)
        
        let manCity = Team(name: "Manchester City", color: UIColor(colorLiteralRed: 127, green: 127, blue: 127, alpha: 1.0), manager: "Pelligreini", postion: 1)
        teams.append(manCity)
        
        let newcastle = Team(name: "Newcastle", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Mclaren", postion: 17)
        teams.append(newcastle)
        
        let spurs = Team(name: "Tottenham Hotspur", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Pochtteino", postion: 5)
        teams.append(spurs)
        
        let swansea = Team(name: "Swansea", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Monk", postion: 14)
        teams.append(swansea)
        
        let stokecity = Team(name: "Stoke City", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Hughes", postion: 12)
        teams.append(stokecity)
        
        let liverpool = Team(name: "Liverpool", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Klopp", postion: 10)
        teams.append(liverpool)
        
        let watford = Team(name: "Watford", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Flores", postion: 11)
        teams.append(watford)
        
        let westham = Team(name: "West Ham", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Bilic", postion: 6)
        teams.append(westham)
        
        let westbrom = Team(name: "West Brom", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Pulis", postion: 13)
        teams.append(westbrom)
        
        let norwich = Team(name: "Norwich", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Neil", postion: 15)
        teams.append(norwich)
        
        let sunderland = Team(name: "Sunderland", color: UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0), manager: "Allordcye", postion: 19)
        teams.append(sunderland)
        
        teams = teams.sort { return $0.position < $1.position }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

