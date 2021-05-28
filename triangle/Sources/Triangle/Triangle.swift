//Solution goes in Sources

import Foundation

struct Triangle {

    let kind: String

    init(_ x: Double, _ y: Double, _ z: Double) {
        
        if x <= 0 || y <= 0 || z <= 0 {
            self.kind = "ErrorKind"
        }
        
        else if (x + y) < z || (x + z) < y || (y + z) < x {
            self.kind = "ErrorKind"
        }
        
        else if x == y && y == z {
            self.kind = "Equilateral"
        }
        
        else if x == y || x == z || y == z {
            self.kind = "Isosceles"
        }
        
        else {
            self.kind = "Scalene"
        }
    }
}
