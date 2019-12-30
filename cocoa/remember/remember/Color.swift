//
//  Color.swift
//  Remember
//
//  Created by Bogdan Popa on 30/12/2019.
//  Copyright © 2019 CLEARTYPE SRL. All rights reserved.
//

import Foundation

let BG_RELATIVE_DATETIME = hexColor(rgb: "21262d")!
let BG_DUE_IN = hexColor(rgb: "a8a8aa")!
let BG_TAG = hexColor(rgb: "4c88f2")!

func hexColor(rgb: String) -> NSColor? {
    guard let n = UInt32(rgb, radix: 16) else {
        return nil
    }

    let r = CGFloat((n & 0xFF0000) >> 16) / 255.0
    let g = CGFloat((n & 0x00FF00) >>  8) / 255.0
    let b = CGFloat((n & 0x0000FF))       / 255.0
    return NSColor(red: r, green: g, blue: b, alpha: 1.0)
}