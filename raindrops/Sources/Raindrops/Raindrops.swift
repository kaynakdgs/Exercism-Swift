//Solution goes in Sources

struct Raindrops {
    
    var sounds: String = ""
    
    init(_ drops:  Int) {
        
        if (drops % 3 == 0 ) {
            sounds += "Pling"
        }
        
        if (drops % 5 == 0 ) {
            sounds += "Plang"
        }
        
        if (drops % 7 == 0 ) {
            sounds += "Plong"
        }
        
        if (sounds.count == 0) {
             sounds = String(drops)
        }
    }
}
