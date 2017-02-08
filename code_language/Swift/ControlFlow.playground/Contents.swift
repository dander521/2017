//: Playground - noun: a place where people can play

import UIKit

/************************************************/
/*
 For-In 循环
 While 循环
 条件语句
 控制转移语句（Control Transfer Statements）
 提前退出
 检测 API 可用性
 */


if #available(iOS 10, macOS 10.12, *) {
    // 在 iOS 使用 iOS 10 的 API, 在 macOS 使用 macOS 10.12 的 API
} else {
    // 使用先前版本的 iOS 和 macOS 的 API
}

if #available(iOS 8.3, macOS 10.12, *) {
    // statements to execute if the APIs are available
} else {
    // fallback statements to execute if the APIs are unavailable
}