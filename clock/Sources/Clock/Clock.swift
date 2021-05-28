//Solution goes in Sources

import Foundation

struct Clock: Equatable, CustomStringConvertible {
    
    var hours: Int
    var minutes: Int
    
    init(hours: Int = 0, minutes: Int = 0) {
        var hour = (hours + minutes / 60) % 24
        var minute = minutes % 60
        
        if minute < 0 {
            minute += 60
            hour -= 1
        }
        
        if hour < 0 {
            hour += 24
        }
        
        self.hours = hour
        self.minutes = minute
    }
    
    func add(minutes: Int) -> Clock {
        return Clock(hours: self.hours, minutes: self.minutes + minutes)
    }
    
    func subtract(minutes: Int) -> Clock {
        return Clock(hours: self.hours, minutes: self.minutes - minutes)
    }
    
    var description: String {
        return String(format: "%02d:%02d", hours, minutes)
    }
}
