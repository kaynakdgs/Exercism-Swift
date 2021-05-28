import Foundation

enum Plant: Character {
    case clover = "C"
    case grass = "G"
    case radishes = "R"
    case violets = "V"
}

struct Garden {
    var garden: String
    var children = ["Alice", "Bob", "Charlie", "David",
                    "Eve", "Fred", "Ginny", "Harriet",
                    "Ileana", "Joseph", "Kincaid", "Larry"]

    var rows: [[Plant]] {
        return  garden.components(separatedBy: .whitespacesAndNewlines).map { $0.map { Plant(rawValue: $0)! } }
    }

    init(_ diagram: String) {
        self.garden = diagram
    }

    init(_ diagram: String, children: [String]) {
        self.init(diagram)
        self.children = children.sorted()
    }
    
    func plantsForChild(_ name: String) -> [Plant] {
        guard let chlid = children.index(of: name) else { return [] }
        let plant = 2 * chlid
        return (rows[0][plant...plant + 1] + rows[1][plant...plant + 1]).map { $0 }
    }
}
