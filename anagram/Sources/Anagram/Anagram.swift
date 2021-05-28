//Solution goes in Sources

struct Anagram {
    private let word: String
    
    init(word: String) {
        self.word = word.lowercased()
    }
    
    func match(_ words: [String]) -> [String] {
        return words.filter({ isAnagram($0.lowercased()) })
    }
    
    func isAnagram(_ isAnagram: String) -> Bool {
        return isAnagram != word && isAnagram.sorted() == word.sorted()
    }
}
