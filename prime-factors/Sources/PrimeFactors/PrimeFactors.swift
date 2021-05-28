//Solution goes in Sources

struct PrimeFactors {
    var toArray = [Int]()
    
    init(_ number: Int) {
        var divisior = 2
        var number = number
        
        while number > 1 {
            if number % divisior == 0 {
                toArray.append(divisior)
                number /= divisior
            }
            else {
                divisior += 1
            }
        }
    }
}
