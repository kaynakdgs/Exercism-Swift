//Solution goes in Sources

struct IsbnVerifier {
    static let versionNumber = 10
    
    static func isValid(_ input: String) -> Bool {
        let number = input.filter({ $0 != "-" }).map { String($0) }
        
        if number.count != versionNumber {
            return false
        }
        
        var total = 0
        for (index, digit) in number.enumerated() {
            if let digit = Int(digit) {
                total += digit * (number.count - index)
            } else if digit == "X",
                number.count - 1 == index {
                total += versionNumber
            } else {
                return false
            }
        }
        return total % 11 == 0
    }
}
