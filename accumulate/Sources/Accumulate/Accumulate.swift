//Solution goes in Sources

extension Array {
    func accumulate<T>(_ operation: (Element) -> (T)) -> [T] {
        var array = [T]()
        for i in self {
            array.append(operation(i))
        }
        
        return array
    }
}
