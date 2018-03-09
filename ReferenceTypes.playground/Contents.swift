//: Playground - noun: a place where people can play

import UIKit

//class Appointment {
//    var name: String
//    var day: String
//    var place: String
//
//    init(name: String, day: String, place: String) {
//        self.name = name
//        self.day = day
//        self.place = place
//    }
//
//    func printDetails(label: String) {
//        print("\(label) with \(name) on \(day) at \(place)")
//    }
//}
//
//var beerMeeting = Appointment(name: "Bob", day: "Mon", place: "Joe's Bar")
//var workMeeting = beerMeeting
//workMeeting.name = "Alice"
//workMeeting.day = "Fri"
//workMeeting.place = "Conference Rm 2"
//
//beerMeeting.printDetails(label: "Social")
//workMeeting.printDetails(label: "Work")

class Location {
    var name: String
    var address: String
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
}



//  只有类才可以实现NSCopying协议，结构体不可以。结构体本身实现了深复制。
class NewAppointment: NSObject, NSCopying {
    
    var name: String;
    var day: String;
    var place: String;
    
    init(name: String, day: String, place: String) {
        self.name = name
        self.day = day
        self.place = place
    }
    
    func printDetails(label: String) {
        print("\(label) with \(name) on \(day) at \(place)")
    }
    
    //  在实现copyWithZone方法时，可以忽略NSZone这个参数
    func copy(with zone: NSZone? = nil) -> Any {
        return NewAppointment(name: self.name, day: self.day, place: self.place)
    }
    
}

var newBeerMeeting = NewAppointment(name: "Bob", day: "Mon", place: "Joe's Bar")
var newWorkMeeting = newBeerMeeting.copy() as! NewAppointment
newBeerMeeting.name = "Alice"
newBeerMeeting.day = "Fri"
newBeerMeeting.place = "Conference Rm 2"
newBeerMeeting.printDetails(label: "Social")
newWorkMeeting.printDetails(label: "Work")











