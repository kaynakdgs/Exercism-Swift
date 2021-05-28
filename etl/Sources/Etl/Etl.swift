//Solution goes in Sources

struct ETL {
    
    static func transform(_ oldSystem: [Int: [String] ]) -> [String: Int] {
        var newSystem = [String: Int]()
        for (score, letters) in oldSystem {
            for letter in letters {
                newSystem[letter.lowercased()] = score
            }
        }
        return newSystem
    }
}
