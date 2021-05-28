//Solution goes in Sources

extension Array {
    func keep(closure: (Element) -> Bool) -> [Element] {
        var array = [Element]()
        for i in self {
            if(closure(i)) {
                array.append(i)
            }
        }
        return array
    }
    
    func discard(closure: (Element) -> Bool) -> [Element] {
        var array = [Element]()
        for i in self {
            if(!closure(i)) {
                array.append(i)
            }
        }
        return array
    }
}
