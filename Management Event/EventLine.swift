import Foundation
import UIKit
class EventLine
{
    var dates: String
    var events: [Event]
    var dateImages: UIImage
    
    init(dateOfWeek: String, includeEvents: [Event], dateImage: UIImage)
    {
        dates = dateOfWeek
        events = includeEvents
        dateImages = dateImage
    }
    
    class func eventLines() -> [EventLine]
    {
        return [self.cn(), self.t2(), self.t3(), self.t4(), self.t5(), self.t6(), self.t7()]
    }
    
    //  Chủ nhật
    private class func cn() -> EventLine {
        var events = [Event]()
        
        events.append(Event(titled: "Tiêu đề 1", description: "Mô tả 1"))
        events.append(Event(titled: "Tiêu đề 2", description: "Mô tả 2"))
        events.append(Event(titled: "Tiêu đề 3", description: "Mô tả 3"))
        events.append(Event(titled: "Tiêu đề 4", description: "Mô tả 4"))
        events.append(Event(titled: "Tiêu đề 5", description: "Mô tả 5"))
        events.append(Event(titled: "Tiêu đề 6", description: "Mô tả 6"))
        events.append(Event(titled: "Tiêu đề 7", description: "Mô tả 7"))
        events.append(Event(titled: "Tiêu đề 8", description: "Mô tả 8"))
        events.append(Event(titled: "Tiêu đề 9", description: "Mô tả 9"))
        events.append(Event(titled: "Tiêu đề 10", description: "Mô tả 10"))
        
        return EventLine(dateOfWeek: "Chủ Nhật", includeEvents: events, dateImage: #imageLiteral(resourceName: "sunday"))
    }
    
    //  Thứ 2
    private class func t2() -> EventLine {
        var events = [Event]()
        
        events.append(Event(titled: "Tiêu đề 1", description: "Mô tả 1"))
        events.append(Event(titled: "Tiêu đề 2", description: "Mô tả 2"))
        events.append(Event(titled: "Tiêu đề 3", description: "Mô tả 3"))
        events.append(Event(titled: "Tiêu đề 4", description: "Mô tả 4"))
        events.append(Event(titled: "Tiêu đề 5", description: "Mô tả 5"))
        events.append(Event(titled: "Tiêu đề 6", description: "Mô tả 6"))
        events.append(Event(titled: "Tiêu đề 7", description: "Mô tả 7"))
        events.append(Event(titled: "Tiêu đề 8", description: "Mô tả 8"))
        events.append(Event(titled: "Tiêu đề 9", description: "Mô tả 9"))
        events.append(Event(titled: "Tiêu đề 10", description: "Mô tả 10"))
        
        return EventLine(dateOfWeek: "Thứ 2", includeEvents: events, dateImage: #imageLiteral(resourceName: "monday"))
    }
    
    //  Thứ 3
    private class func t3() -> EventLine {
        var events = [Event]()
        
        events.append(Event(titled: "Tiêu đề 1", description: "Mô tả 1"))
        events.append(Event(titled: "Tiêu đề 2", description: "Mô tả 2"))
        events.append(Event(titled: "Tiêu đề 3", description: "Mô tả 3"))
        events.append(Event(titled: "Tiêu đề 4", description: "Mô tả 4"))
        events.append(Event(titled: "Tiêu đề 5", description: "Mô tả 5"))
        events.append(Event(titled: "Tiêu đề 6", description: "Mô tả 6"))
        events.append(Event(titled: "Tiêu đề 7", description: "Mô tả 7"))
        events.append(Event(titled: "Tiêu đề 8", description: "Mô tả 8"))
        events.append(Event(titled: "Tiêu đề 9", description: "Mô tả 9"))
        events.append(Event(titled: "Tiêu đề 10", description: "Mô tả 10"))
        
        return EventLine(dateOfWeek: "Thứ 3", includeEvents: events, dateImage: #imageLiteral(resourceName: "tuesday"))
    }
    
    //  Thứ 4
    private class func t4() -> EventLine {
        var events = [Event]()
        
        events.append(Event(titled: "Tiêu đề 1", description: "Mô tả 1"))
        events.append(Event(titled: "Tiêu đề 2", description: "Mô tả 2"))
        events.append(Event(titled: "Tiêu đề 3", description: "Mô tả 3"))
        events.append(Event(titled: "Tiêu đề 4", description: "Mô tả 4"))
        events.append(Event(titled: "Tiêu đề 5", description: "Mô tả 5"))
        events.append(Event(titled: "Tiêu đề 6", description: "Mô tả 6"))
        events.append(Event(titled: "Tiêu đề 7", description: "Mô tả 7"))
        events.append(Event(titled: "Tiêu đề 8", description: "Mô tả 8"))
        events.append(Event(titled: "Tiêu đề 9", description: "Mô tả 9"))
        events.append(Event(titled: "Tiêu đề 10", description: "Mô tả 10"))
        
        return EventLine(dateOfWeek: "Thứ 4", includeEvents: events, dateImage: #imageLiteral(resourceName: "wednesday"))
    }
    
    //  Thứ 5
    private class func t5() -> EventLine {
        var events = [Event]()
        
        events.append(Event(titled: "Tiêu đề 1", description: "Mô tả 1"))
        events.append(Event(titled: "Tiêu đề 2", description: "Mô tả 2"))
        events.append(Event(titled: "Tiêu đề 3", description: "Mô tả 3"))
        events.append(Event(titled: "Tiêu đề 4", description: "Mô tả 4"))
        events.append(Event(titled: "Tiêu đề 5", description: "Mô tả 5"))
        events.append(Event(titled: "Tiêu đề 6", description: "Mô tả 6"))
        events.append(Event(titled: "Tiêu đề 7", description: "Mô tả 7"))
        events.append(Event(titled: "Tiêu đề 8", description: "Mô tả 8"))
        events.append(Event(titled: "Tiêu đề 9", description: "Mô tả 9"))
        events.append(Event(titled: "Tiêu đề 10", description: "Mô tả 10"))
        
        return EventLine(dateOfWeek: "Thứ 5", includeEvents: events, dateImage: #imageLiteral(resourceName: "thursday"))
    }
    
    //  thứ 6
    private class func t6() -> EventLine {
        var events = [Event]()
        
        events.append(Event(titled: "Tiêu đề 1", description: "Mô tả 1"))
        events.append(Event(titled: "Tiêu đề 2", description: "Mô tả 2"))
        events.append(Event(titled: "Tiêu đề 3", description: "Mô tả 3"))
        events.append(Event(titled: "Tiêu đề 4", description: "Mô tả 4"))
        events.append(Event(titled: "Tiêu đề 5", description: "Mô tả 5"))
        events.append(Event(titled: "Tiêu đề 6", description: "Mô tả 6"))
        events.append(Event(titled: "Tiêu đề 7", description: "Mô tả 7"))
        events.append(Event(titled: "Tiêu đề 8", description: "Mô tả 8"))
        events.append(Event(titled: "Tiêu đề 9", description: "Mô tả 9"))
        events.append(Event(titled: "Tiêu đề 10", description: "Mô tả 10"))
        
        return EventLine(dateOfWeek: "Thứ 6", includeEvents: events, dateImage: #imageLiteral(resourceName: "friday"))
    }
    
    //  Thứ 7
    private class func t7() -> EventLine {
        var events = [Event]()
        
        events.append(Event(titled: "Tiêu đề 1", description: "Mô tả 1"))
        events.append(Event(titled: "Tiêu đề 2", description: "Mô tả 2"))
        events.append(Event(titled: "Tiêu đề 3", description: "Mô tả 3"))
        events.append(Event(titled: "Tiêu đề 4", description: "Mô tả 4"))
        events.append(Event(titled: "Tiêu đề 5", description: "Mô tả 5"))
        events.append(Event(titled: "Tiêu đề 6", description: "Mô tả 6"))
        events.append(Event(titled: "Tiêu đề 7", description: "Mô tả 7"))
        events.append(Event(titled: "Tiêu đề 8", description: "Mô tả 8"))
        events.append(Event(titled: "Tiêu đề 9", description: "Mô tả 9"))
        events.append(Event(titled: "Tiêu đề 10", description: "Mô tả 10"))
        
        return EventLine(dateOfWeek: "Thứ 7", includeEvents: events, dateImage: #imageLiteral(resourceName: "saturday"))
    }
}
