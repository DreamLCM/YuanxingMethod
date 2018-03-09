//: Playground - noun: a place where people can play

import UIKit

class LogItem {
    var from: String?
    //  使用NSCopying属性修饰符，当给该属性赋值时，数组的值将会被浅复制。
    @NSCopying var data: NSArray?
}

var dataArray = NSMutableArray(array: [1,2,3,4])
var logitem = LogItem()
logitem.from = "Alice"
logitem.data = dataArray

dataArray[1] = 10
print("Value: \(logitem.data![1])")

