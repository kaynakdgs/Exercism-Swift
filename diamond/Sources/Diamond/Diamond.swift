//Solution goes in Sources

struct Diamond {
    static func makeDiamond(letter: Character) -> [String] {
        let letters: [Character] = ["A", "B", "C", "D", "E", "F", "G",
                                    "H", "I", "J", "K", "L", "M", "N",
                                    "O", "P", "Q", "R", "S", "T", "U",
                                    "V", "W", "X", "Y", "Z"]
        
        guard let index = letters.firstIndex(of: letter) else {
            return []
        }
        
        var diamond = Array(repeating: Array(repeating: " " as Character, count: index+1), count: index+1)
        
        for i in 0...index {
            diamond[i][index-i] = letters[i]
        }
        
        diamond = diamond.map { arr in arr + Array(arr.dropLast().reversed()) }
        diamond.append(contentsOf: diamond.dropLast().reversed())
        
        return diamond.map { String($0) }
    }
}
