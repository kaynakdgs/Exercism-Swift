//Solution goes in Sources

import Foundation

class Queens {
    var white = [Int](repeating:0, count: 2)
    var black = [Int](repeating:0, count: 2)

    enum InitError : Error {
        case incorrectNumberOfCoordinates
        case invalidCoordinates
        case sameSpace
    }
    
    init(white: [Int] = [0,3], black: [Int] = [7,3]) throws {
        let totalWhite = white.reduce(0,+)
        let totalBlack = black.reduce(0,+)
        if (white.count > 2 || black.count > 2) {
            throw InitError.incorrectNumberOfCoordinates
        }
        else if (white == black) {
            throw InitError.sameSpace
        }
        else if (totalWhite < 0 || totalWhite > 16 || totalBlack < 0 || totalBlack > 16) {
            throw InitError.invalidCoordinates
        }
        else {
            self.white = white
            self.black = black
        }
    }

    var canAttack : Bool {
        return white[0] == black[0] || white[1] == black[1] || abs(white[0] - white[1]) == abs(black[0] - black[1])
    }

    var description : String {
        var result = ""
        for i in 0...7 {
            for j in 0...7 {
                if (white == [i, j]) { result.append("W ")}
                else if (black == [i, j]) {result.append("B ")}
                else {
                    (j == 7) ? result.append("_") : result.append("_ ")
                }
            }
            if (i < 7) { result.append("\n") }
            
        }
        return result
    }
}
