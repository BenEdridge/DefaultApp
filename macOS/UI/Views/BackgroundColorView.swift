//
//  BackgroundColorView.swift
//
//  Created by Tyler Hall on 3/12/20.
//  Copyright © 2020 Click On Tyler. All rights reserved.
//

import Cocoa

class BackgroundColorView: NSView {

    @IBInspectable var namedBackgroundColor: String = ""
    @IBInspectable var backgroundColor: NSColor = .white
    
    override func updateLayer() {
        if let color = NSColor(named: NSColor.Name(namedBackgroundColor)) {
            layer?.backgroundColor = color.cgColor
        } else {
            layer?.backgroundColor = backgroundColor.cgColor
        }
    }
}
