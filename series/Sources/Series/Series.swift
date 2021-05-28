//Solution goes in Sources

struct Series {
    var array: [Int]
    
    init(_ word: String) {
        array = word.map({ Int(String($0))! })
    }
    
    func slices(_ lenght: Int) -> [[Int]] {
        var number = 0
        var numbersArray: [[Int]] = []
        
        while number + lenght <= array.count {
            var item: [Int] = []
            for i in number..<(number + lenght) {
                item.append(array[i])
            }
            
            numbersArray.append(item)
            number += 1
        }
        
        return numbersArray
    }
}
