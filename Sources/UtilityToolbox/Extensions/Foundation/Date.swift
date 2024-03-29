//
//  Date.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import Foundation

public extension Date {
    
    func label(isPrecise: Bool = true) -> String {
        let hour = isPrecise ? " \(self.formatted(.dateTime.hour().minute()))" : ""
        switch true {
        case self.isYesterday: return "Yesterday\(hour)"
        case self.isToday: return "Today\(hour)"
        default: return "\(self)"
        }
    }
    
    /// Returns the date in the format dd/mm/yyyy (example: 01/01/2000).
    var ddmmyyyy: String {
        self.formatted(
            .dateTime
                .day(.twoDigits)
                .month(.twoDigits)
                .year(.defaultDigits)
        )
    }
    
    /// Returns true if the date is today and false otherwise.
    var isToday: Bool {
        let calendar = Calendar.current
        return calendar.isDateInToday(self)
    }
    
    /// Returns true if date is yesterday, false otherwise.
    var isYesterday: Bool {
        let calendar = Calendar.current
        return calendar.isDateInYesterday(self)
    }
    
    /// Returns true if date is tomorrow, false otherwise.
    var isTomorrow: Bool {
        let calendar = Calendar.current
        return calendar.isDateInTomorrow(self)
    }
    
    private func get(_ components: Calendar.Component..., calendar: Calendar = Calendar.current) -> DateComponents {
        return calendar.dateComponents(Set(components), from: self)
    }
    
    func get(_ component: Calendar.Component, calendar: Calendar = Calendar.current) -> Int {
        return calendar.component(component, from: self)
    }
    
    /// Returns a new date by adding a component.
    func newDateByAdding(value: Int, component: Calendar.Component) -> Date? {
        Calendar.current.date(byAdding: component, value: value, to: self)
    }
    
    /// Get components from date.
    var components: DateComponents {
        var dateComponents = DateComponents()
        
        let date = get(.day, .month, .year, .hour, .minute, .second)
        
        if let day = date.day,
           let month = date.month,
           let year = date.year,
           let hour = date.hour,
           let minute = date.minute,
           let second = date.second {
            dateComponents.day = day
            dateComponents.month = month
            dateComponents.year = year
            dateComponents.hour = hour
            dateComponents.minute = minute
            dateComponents.second = second
        }
        
        return dateComponents
    }
}
