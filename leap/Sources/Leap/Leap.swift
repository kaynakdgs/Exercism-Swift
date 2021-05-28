//Solution goes in Sources

struct Year {
    
    var calendarYear: Int
    
    var isLeapYear: Bool {
        var isLeapYear = false

        if (calendarYear % 4 == 0) {
            isLeapYear = true
        }
        if (calendarYear % 100 == 0) {
            isLeapYear = false
        }
        if (calendarYear % 400 == 0) {
            isLeapYear = true
        }
        return isLeapYear
    }
}
