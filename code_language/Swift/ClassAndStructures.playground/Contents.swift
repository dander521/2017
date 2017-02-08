//: Playground - noun: a place where people can play

import UIKit

// 类和结构体

class SomeClass {
    
}

struct SomeStructure {
    
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()

let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width)")

print("The width of someResolution is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280
print("The width of someResolution is \(someVideoMode.resolution.width)")

// 结构体类型的成员逐一构造器

let vga = Resolution(width: 640, height: 480)

/*
 
 按照通用的准则，当符合一条或多条以下条件时，请考虑构建结构体：
 
 该数据结构的主要目的是用来封装少量相关简单数据值。
 有理由预计该数据结构的实例在被赋值或传递时，封装的数据将会被拷贝而不是被引用。
 该数据结构中储存的值类型属性，也应该被拷贝，而不是被引用。
 该数据结构不需要去继承另一个既有类型的属性或者行为。
 举例来说，以下情境中适合使用结构体：
 
 几何形状的大小，封装一个width属性和height属性，两者均为Double类型。
 一定范围内的路径，封装一个start属性和length属性，两者均为Int类型。
 三维坐标系内一点，封装x，y和z属性，三者均为Double类型。*/