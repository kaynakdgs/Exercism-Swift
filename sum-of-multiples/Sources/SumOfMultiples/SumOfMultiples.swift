//Solution goes in Sources

struct SumOfMultiples {
    static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        guard limit > 0 else { return 0 }
        var multiples = Set<Int>()

        for i in 1...(limit - 1) {
            for j in inMultiples {
                if j == 0 {
                    multiples.insert(0)
                } else {
                    let n = i % j
                    if n == 0 {
                        multiples.insert(i)
                    }
                }
            }
        }
        return multiples.reduce(0, +)
    }
}
