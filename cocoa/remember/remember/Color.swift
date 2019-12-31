//
//  Color.swift
//  Remember
//
//  Created by Bogdan Popa on 30/12/2019.
//  Copyright © 2019 CLEARTYPE SRL. All rights reserved.
//

import Foundation

let BG_CURRENT_ENTRY = hexColor(rgba: "ffffff66")!
let BG_DUE_IN = hexColor(rgba: "43424266")!
let FG_DUE_IN = hexColor(rgb: "ffffff")!
let BG_RELATIVE_TIME = hexColor(rgb: "21262d")!
let FG_RELATIVE_TIME = hexColor(rgb: "ffffff")!
let BG_NAMED_DATE = hexColor(rgb: "21262d")!
let FG_NAMED_DATE = hexColor(rgb: "ffffff")!
let BG_TAG = hexColor(rgb: "4c88f2")!
let FG_TAG = hexColor(rgb: "ffffff")!

func hexColor(rgb: String) -> NSColor? {
    return hexColor(rgba: "\(rgb)FF")
}

func hexColor(rgba: String) -> NSColor? {
    guard let n = UInt32(rgba, radix: 16) else {
        return nil
    }

    let r = CGFloat((n & 0xFF000000) >> 24) / 255.0
    let g = CGFloat((n & 0x00FF0000) >> 16) / 255.0
    let b = CGFloat((n & 0x0000FF00) >>  8) / 255.0
    let a = CGFloat((n & 0x000000FF))       / 255.0
    return NSColor(red: r, green: g, blue: b, alpha: a)
}
