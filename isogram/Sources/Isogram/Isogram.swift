//Solution goes in Sources

struct Isogram {
    
    static func isIsogram(_ word: String) -> Bool {
        var letters: [Character] = []
        
        for letter in word.lowercased() {
            guard letter >= "a" && letter <= "z"  else { continue }
            if letters.contains(letter) {
                return false
            } else {
                letters.append(letter)
            }
        }
        return true
    }
}
