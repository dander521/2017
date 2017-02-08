//: Playground - noun: a place where people can play

import UIKit

enum SomeEnumeration {
    //
}

enum CompassPoint {
    case North
    case South
    case East
    case West
}

enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var directionToHead = CompassPoint.West

directionToHead = .East

switch directionToHead {
case .North:
    print("North")
case .South:
    print("South")
case .West:
    print("West")
case .East:
    print("East")
}

