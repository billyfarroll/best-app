import UIKit

class Team {
    
    var name: String!
    var color: UIColor!
    var manager: String!
    var position: Int!
    
    
    init(name: String, color: UIColor, manager: String, postion: Int) {
        self.name = name
        self.color = color
        self.manager = manager
        self.position = postion
    }

}
