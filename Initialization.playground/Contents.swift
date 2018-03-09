//: Playground - noun: a place where people can play

import UIKit
import Foundation

class Sum : NSObject, NSCopying {
    
    var resultsCache: [[Int]]
    var firstValue: Int
    var secondValue: Int
    
    init(first: Int, second: Int) {
        self.resultsCache = [[Int]](repeating: [Int](repeating: 0, count:10), count: 10)
        for i in 0..<10 {
            for j in 0..<10 {
                self.resultsCache[i][j] = i + j
            }
        }
        self.firstValue = first
        self.secondValue = second
    }
    
    private init(first: Int, second: Int, cache: [[Int]]) {
        self.firstValue = first
        self.secondValue = second
        resultsCache = cache
    }
    
    var Result: Int {
        get {
            return firstValue < resultsCache.count && secondValue < resultsCache[firstValue].count ? resultsCache[firstValue][secondValue] : firstValue + secondValue
        }
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Sum(first: self.firstValue, second: self.secondValue, cache: self.resultsCache)
    }
}

var prototype = Sum(first: 0, second: 9)
var calc1 = prototype.Result
var clone = prototype.copy() as! Sum
clone.firstValue = 3
clone.secondValue = 8
var calc2 = clone.Result
print("Calc1: \(calc1) Calc2: \(calc2)")








