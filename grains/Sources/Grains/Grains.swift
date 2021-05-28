//Solution goes in Sources

import Foundation

struct Grains {
    
    static var total = UInt.max
    static func square(_ input: Int) throws -> UInt {
        let errorMessage = "Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)"
        switch input {
        case 1...64:
            return UInt(pow(2.0, Double(input - 1)))
        case ..<1:
            throw GrainsError.inputTooLow(errorMessage)
        case 64...:
            throw GrainsError.inputTooHigh(errorMessage)
        default:
            return 0
        }
    }
    
    enum GrainsError: Error {
        case inputTooLow(String)
        case inputTooHigh(String)
    }
}
