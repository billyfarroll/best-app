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
        
                
        let bournemouth = Team(name: "Bournemouth", color: UIColor(red: 242, green: 12, blue: 40), manager: "Howe", postion: 18)
        teams.append(bournemouth)
        
        let manUtd = Team(name: "Manchester Utd", color: UIColor(red: 204, green: 4, blue: 4), manager: "Gaal", postion: 4)
        teams.append(manUtd)
        
        let chelsea = Team(name: "Chelsea", color: UIColor(red: 5, green: 79, blue: 252), manager: "Mourhino", postion: 16)
        teams.append(chelsea)
        
        let southampton = Team(name: "Southampton", color: UIColor(red: 242, green: 24, blue: 24), manager: "Koeman", postion: 7)
        teams.append(southampton)
        
        let arsenal = Team(name: "Arsenal", color: UIColor(red: 242, green: 39, blue: 39), manager: "Wenger", postion: 2)
        teams.append(arsenal)
        
        let astonvilla = Team(name: "Aston Villa", color: UIColor(red: 120, green: 80, blue: 135), manager: "Garde", postion: 20)
        teams.append(astonvilla)
        
        let everton = Team(name: "Everton", color: UIColor(red: 29, green: 10, blue: 240), manager: "Martinez", postion: 9)
        teams.append(everton)
        
        let crystalpalace = Team(name: "Crystal Palace", color: UIColor(red: 148, green: 7, blue: 132), manager: "Pardew", postion: 8)
        teams.append(crystalpalace)
        
        let leciester = Team(name: "Leciester", color: UIColor(red: 0, green: 32, blue: 176), manager: "Raneri", postion: 3)
        teams.append(leciester)
        
        let manCity = Team(name: "Manchester City", color: UIColor(red: 7, green: 246, blue: 250), manager: "Pelligreini", postion: 1)
        teams.append(manCity)
        
        let newcastle = Team(name: "Newcastle", color: UIColor(red: 158, green: 159, blue: 163), manager: "Mclaren", postion: 17)
        teams.append(newcastle)
        
        let spurs = Team(name: "Tottenham Hotspur", color: UIColor(red: 247, green: 248, blue: 250), manager: "Pochtteino", postion: 5)
        teams.append(spurs)
        
        let swansea = Team(name: "Swansea", color: UIColor(red: 237, green: 238, blue: 240), manager: "Monk", postion: 14)
        teams.append(swansea)
        
        let stokecity = Team(name: "Stoke City", color: UIColor(red: 230, green: 34, blue: 57), manager: "Hughes", postion: 12)
        teams.append(stokecity)
        
        let liverpool = Team(name: "Liverpool", color: UIColor(red: 214, green: 14, blue: 29), manager: "Klopp", postion: 10)
        teams.append(liverpool)
        
        let watford = Team(name: "Watford", color: UIColor(red: 242, green: 227, blue: 12), manager: "Flores", postion: 11)
        teams.append(watford)
        
        let westham = Team(name: "West Ham", color: UIColor(red: 145, green: 3, blue: 173), manager: "Bilic", postion: 6)
        teams.append(westham)
        
        let westbrom = Team(name: "West Brom", color: UIColor(red: 247, green: 247, blue: 247), manager: "Pulis", postion: 13)
        teams.append(westbrom)
        
        let norwich = Team(name: "Norwich", color: UIColor(red: 247, green: 239, blue: 126), manager: "Neil", postion: 15)
        teams.append(norwich)
        
        let sunderland = Team(name: "Sunderland", color: UIColor(red: 209, green: 19, blue: 32) , manager: "Allordcye", postion: 19)
        teams.append(sunderland)
        
        teams = teams.sort { return $0.position < $1.position }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

