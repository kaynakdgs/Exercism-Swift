//Solution goes in Sources

struct Scrabble {
    var score: Int
    
    static func score(_ input: String?) -> Int {
        var score = 0
        
        if let word = input {
            for letter in word.uppercased() {
                switch letter {
                case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T" :
                    score += 1
                case "D", "G":
                    score += 2
                case "B", "C", "M", "P":
                    score += 3
                case "F", "H", "V", "W", "Y":
                    score += 4
                case "K":
                    score += 5
                case "J", "X":
                    score += 8
                case "Q", "Z":
                    score += 10
                default:
                    score += 0
                }
            }
        }
        return score
    }
    
    init(_ input: String?) {
        self.score = Scrabble.score(input)
    }
}
