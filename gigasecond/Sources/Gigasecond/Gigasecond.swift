//Solution goes in Sources

import Foundation

struct Gigasecond {

    let description: String
    let gigasecond: TimeInterval = pow(10, 9)
    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        return dateFormatter
    }()
    
    init?(from dateString: String) {
        guard let date = dateFormatter.date(from: dateString) else { return nil }
        description = dateFormatter.string(from: date.addingTimeInterval(gigasecond))
    }
}
