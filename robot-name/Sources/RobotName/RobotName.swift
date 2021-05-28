//Solution goes in Sources

import Foundation

struct Robot {
    
    var name = ""
    var letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".randomElement()?.description
    var numbers = "0123456789".randomElement()?.description
    
    init() {
        self.name = String(repeating: letters!, count: 2) + String(repeating: numbers!, count: 3)
    }
    
    mutating func resetName(){
       name = ""
    }
}
