//Solution goes in Sources

import Foundation

struct DNA {
    var nucleotides: [String: Int] = ["T": 0,
                                      "A": 0,
                                      "C": 0,
                                      "G": 0]
    init?(strand: String) {
        for i in strand {
            let myStrand = String(i)
            switch i {
            case "A", "C", "G", "T":
                nucleotides[myStrand]! += 1

            default:
                return nil
            }
        }
    }

    public func count(_ nucleotide: String) -> Int {
        return nucleotides[nucleotide]!
    }

    public func counts() -> [String: Int] {
        return nucleotides
    }
}
