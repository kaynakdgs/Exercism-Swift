//Solution goes in Sources
import Foundation

struct Bob {
    static func hey(_ sentence: String) -> String {
        if sentence.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Fine. Be that way!"
            
        } else if (sentence.rangeOfCharacter(from: .letters) != nil) && (sentence.uppercased() == sentence) {
            return "Whoa, chill out!"
            
        } else if sentence.last == "?" {
            return "Sure."
        }
        
       return "Whatever."
    }
}
