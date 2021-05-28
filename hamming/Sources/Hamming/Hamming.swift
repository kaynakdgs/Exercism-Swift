//Solution goes in Sources

import Foundation

struct Hamming {
    
    static func compute(_ first: String, against second: String) -> Int? {
        guard first.count == second.count else {
            return nil
        }
        
        guard first.count > 0 else {
            return 0
        }
        
        var result = 0
        
        for (index, element) in first.enumerated() {
            let i = second.index(second.startIndex, offsetBy: index)
            if element != second[i] {
                result += 1
            }
        }
        
        return result
    }
}
