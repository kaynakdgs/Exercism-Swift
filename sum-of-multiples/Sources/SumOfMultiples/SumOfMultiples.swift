//Solution goes in Sources

struct SumOfMultiples {
    static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        var result = 0
        
        if limit == 0 {
            return 0
        }
        
        for i in 1..<limit {
            for j in inMultiples {
                if j == 0 {
                    continue
                }
                if i % j == 0 {
                    result += i
                    break
                }
            }
        }
        
        return result
    }
}
