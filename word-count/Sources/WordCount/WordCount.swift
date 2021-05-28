//Solution goes in Sources

import Foundation

struct WordCount {
    var wordArray:[String] = []
    let items = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    
    init(words:String) {
        var word = ""
        for i in words.lowercased() {
            if items.contains(i) {
                word.append(i)
            } else {
                if word.count > 0 {
                    wordArray.append(word)
                }
                
                word = ""
            }
        }
        
        if word.count > 0 {
            wordArray.append(word)
        }
    }
    
    func count() -> [String: Int] {
        var result:[String:Int] = [:]
        wordArray.forEach { (text) in
            if let num = result[text] {
                result[text] = num + 1
            } else {
                result[text] = 1
            }
        }
        
        return result
    }
}
