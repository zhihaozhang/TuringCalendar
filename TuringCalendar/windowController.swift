//
//  windowController.swift
//  TuringCalendar
//
//  Created by Chih-Hao on 2018/2/8.
//  Copyright © 2018年 Chih-Hao. All rights reserved.
//

import Cocoa

class windowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        
        if let window = window, let screen = window.screen {
            let screenRect = screen.visibleFrame
            let offsetFromLeft = CGFloat(screenRect.maxX - window.frame.width)
            let offsetFromTop = CGFloat(0)
            let offsetFromBottom = screenRect.maxY - window.frame.height - offsetFromTop
            window.setFrameOrigin(NSPoint(x: offsetFromLeft, y: offsetFromBottom))
            
        }
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

}
