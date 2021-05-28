//Solution goes in Sources

struct PascalsTriangle {
    var rows = [[Int]]()
    
    init(_ rowsCount: Int) {
        for i in 0..<rowsCount {
            var row = [Int]()
            for j in 0...i {
                if j == 0 {
                    row.append(1)
                } else if j == i {
                    row.append(1)
                } else {
                    row.append(rows[i - 1][j - 1] + rows[i - 1][j])
                }
            }
            rows.append(row)
        }
    }
}
