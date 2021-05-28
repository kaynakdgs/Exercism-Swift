//Solution goes in Sources

struct GradeSchool {
    
    var roster: [Int: [String]] = [:]
    var sortedRoster: [Int: [String]] {
        return roster
    }
    
    mutating func addStudent(_ name: String, grade: Int) {
        if var gradeList = roster[grade] {
            gradeList.append(name)
            roster[grade] = gradeList.sorted()
        } else {
            roster[grade] = [name]
        }
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
}
