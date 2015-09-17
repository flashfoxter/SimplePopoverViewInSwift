//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//@extension Int: ExampleProtocol

extension Int  {
    var simpleDescription: String {
        return "The number \(self)"
    }
    func adjust() {
        var re = self
        re = self + 42
    }
}
var abc = 7;

println(7.simpleDescription)
abc.adjust()
abc.simpleDescription