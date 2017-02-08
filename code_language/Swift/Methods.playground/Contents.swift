//: Playground - noun: a place where people can play

import UIKit

/*
 实例方法(Instance Methods)
 类型方法(Type Methods)
 */

class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

class SomeClass {
    class func someTypeMethod() {
        // type method implementation goes here
    }
}
SomeClass.someTypeMethod()