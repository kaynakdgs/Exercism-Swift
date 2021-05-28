//Solution goes in Sources

func flattenArray<T>(_ list: Array<Any?>) -> [T] {
    var result: [T] = []
    for i in list {
        if i is Array<T> {
            result += i as! Array<T>
        } else if i is T {
            result.append(i as! T)
        } else if i != nil {
            result += flattenArray(i as! Array<Any?>)
        }
    }
    return result
}
