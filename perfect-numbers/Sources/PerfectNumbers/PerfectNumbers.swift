//Solution goes in Sources

enum NumberClasses {
    case perfect
    case deficient
    case abundant
}

struct NumberClassifier {
    let number: Int
    
    var classification: NumberClasses {
        switch sum(array: number.divison) {
        case let sum where sum == number:
            return .perfect
        case let sum where sum < number:
            return .deficient
        default:
            return .abundant
        }
    }
}

extension Int {
    var divison: [Int] {
        var array = [Int]()
        
        for i in 1...(self/2) {
            if (self % i) == 0 {
                array.append(i)
            }
        }
        
        return array
    }
}

func sum(array: [Int]) -> Int {
    return array.reduce(0, +)
}
