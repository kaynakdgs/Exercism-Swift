//Solution goes in Sources

enum CollatzConjecture {
    static func steps(_ n: Int) throws -> Int {
        guard n > 0 else { throw CollatzError.invalidInput("Invalid input:  input must be positive") }
        
        switch true {
        case n == 1:
            return 0
        case n % 2 == 0:
            return try 1 + CollatzConjecture.steps(n / 2)
        default:
            return try 1 + CollatzConjecture.steps(3 * n + 1)
        }
    }
    
    enum CollatzError: Error {
        case invalidInput(String)
    }
}
