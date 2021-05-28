//Solution goes in Sources

struct PhoneNumber : CustomDebugStringConvertible {
    var number: String = ""
    
    init(_ input:String) {
        for i in input {
            if number.count == 0 || number.count == 3 {
                if ("23456789").contains(i) { number.append(i) }
            } else {
                if ("0123456789").contains(i) { number.append(i) }
            }
        }
        
        if number.count != 10 { number = "0000000000" }
    }
    
    var areaCode:String {
        return String(number[..<number.index(number.startIndex, offsetBy: 3)])
    }
    
    var debugDescription: String {
        let exchangeCode = String(number[number.index(number.startIndex, offsetBy: 3)..<number.index(number.startIndex, offsetBy: 6)])
        let subscriberNumber = String(number[number.index(number.startIndex, offsetBy: 6)...])
        return "(\(areaCode)) \(exchangeCode)-\(subscriberNumber)"
    }
}
