//Solution goes in Sources

struct Sieve {
    let primes: [Int]

    init(_ limit: Int) {
        var primes = [2]
        var checkArray = Set<Int>()

        for i in 3...limit where i % 2 != 0 {
            if !checkArray.contains(i) {
                primes.append(i)

                var factor = i + i
                while factor <= limit {
                    checkArray.insert(factor)
                    factor += i
                }
            }
        }

        self.primes = primes
    }
}
