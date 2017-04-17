//: Playground - noun: a place where people can play

import UIKit

/*
 自动引用计数的工作机制
 自动引用计数实践
 类实例之间的循环强引用
 解决实例之间的循环强引用
 闭包引起的循环强引用
 解决闭包引起的循环强引用
 */

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized.")
    }
    
    deinit {
        print("\(name) is being deinitialized.")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "Roger Chen")

reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil

