//Solution goes in Sources

enum Classifier {
    case equal
    case sublist
    case superlist
    case unequal
}

func classifier(listOne:[Any],listTwo:[Any]) -> Classifier {
    return .equal
}

func classifier<T:Equatable>(listOne: [T],listTwo: [T]) -> Classifier {
    if listOne == listTwo {
        return .equal
    }
    if listOne.isEmpty && !listTwo.isEmpty {
        return .sublist
    }
    
    if !listOne.isEmpty && listTwo.isEmpty {
        return .superlist
    }
    
    if listOne.count < listTwo.count {
        for index in 0...(listTwo.count-listOne.count) {
            if Array(listTwo[index..<(index+listOne.count)]) == listOne {
                return .sublist
            }
        }
    }
    
    if listOne.count > listTwo.count {
        for index in 0...(listOne.count-listTwo.count) {
            if Array(listOne[index..<(index+listTwo.count)]) == listTwo {
                return .superlist
            }
        }
    }
    
    return .unequal
}
