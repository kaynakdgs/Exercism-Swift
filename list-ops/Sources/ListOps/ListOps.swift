//Solution goes in Sources

struct ListOps {
    
    static func append<T>(_ first: [T], _ second: [T]) -> [T] {
        return first + second
    }
    
    static func concat<T>(_ input: [T]... ) -> [T] {
        var result: [T] = []
        for i in input {
            result += i
        }
        return result
    }
    
    static func filter<T>(_ input: [T], _ closure: (T)-> Bool ) -> [T] {
        var result = [T]()
        for i in input {
            if closure(i) == true {
                result.append(i)
            }
        }
        return result
    }
    
    static func length<T>(_ input: [T]) -> Int {
        var result = 0
        for _ in input {
            result += 1
        }
        return result
    }
    
    static func map<T, K>(_ input: [T], _ closure: (T)-> (K) ) -> [K] {
        var result = [K]()
        for i in input {
            result.append(closure(i))
        }
        return result
    }
    
    static func foldLeft<T,K>(_ input: [T], accumulated: K, combine: (K, T) -> (K)) -> K {
        var result = accumulated
        for i in input {
            result = combine(result, i)
        }
        return result
    }
    
    static func foldRight<T, K>(_ input: [T], accumulated: K, combine: (T, K) -> (K)) -> K {
        if input.count == 0 {
            return accumulated
        }
        var result = accumulated
        for i in self.reverse(input) {
            result = combine(i, result)
        }
        return result
    }
    
    static func reverse<T>(_ input: [T]) -> [T] {
        var result = [T]()
        for i in input {
            result = self.append([i], result)
        }
        return result
    }
}
