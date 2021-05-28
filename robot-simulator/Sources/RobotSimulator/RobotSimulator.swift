//Solution goes in Sources

struct SimulatedRobot {
    enum Direction {
        case north
        case east
        case south
        case west
    }
    
    enum Instructions: Character {
        case turnRight = "R"
        case turnLeft = "L"
        case advance = "A"
    }
    
    var bearing: Direction
    var x: Int = 0
    var y: Int = 0
    
    init() {
        self.bearing = .north
    }
    
    var coordinates: [Int] {
        return [x, y]
    }
    
    mutating func orient(_ bearing: Direction) {
        self.bearing = bearing
    }
    
    mutating func turnRight() {
        switch bearing {
        case .north:
            bearing = .east
        case .east:
            bearing = .south
        case .south:
            bearing = .west
        case .west:
            bearing = .north
        }
    }
    
    mutating func turnLeft() {
        switch bearing {
        case .north:
            bearing = .west
        case .east:
            bearing = .north
        case .south:
            bearing = .east
        case .west:
            bearing = .south
        }
    }
    
    mutating func advance() {
        switch bearing {
        case .north: y += 1
        case .east: x += 1
        case .south: y -= 1
        case .west: x -= 1
        }
    }
    
    mutating func instructions(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    mutating func place(x: Int, y: Int, direction: Direction) {
        instructions(x: x, y: y)
        orient(direction)
    }
    
    mutating func evaluate(_ program: String) {
        for i in instructions(program) {
            switch i {
            case .turnRight:
                turnRight()
            case .turnLeft:
                turnLeft()
            case .advance:
                advance()
            }
        }
    }
    
    func instructions(_ input: String) -> [Instructions] {
        var instructions = [Instructions]()
        
        for i in input {
            if let instruction = Instructions(rawValue: i) {
                instructions.append(instruction)
            }
        }
        
        return instructions
    }
}
