//Solution goes in Sources

class Squares {
    let squareOfSum: Int
    let sumOfSquares: Int
    let differenceOfSquares: Int
    
    init(_ number: Int) {
        var squareOfSum = 0
        var sumOfSquares = 0
        
        for n in 1...number {
            sumOfSquares += (n * n)
            squareOfSum += n
        }
        
        self.sumOfSquares = sumOfSquares
        self.squareOfSum = (squareOfSum * squareOfSum)
        self.differenceOfSquares = self.squareOfSum - self.sumOfSquares
    }
}
