//
//  DesktopPanel.swift
//  TuLingCalendar
//
//  Created by Chih-Hao on 2018/2/8.
//  Copyright © 2018年 Chih-Hao. All rights reserved.
//

import Cocoa

class DesktopPanel: NSWindow {
    
    
    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        
        super.init(contentRect: contentRect, styleMask: style, backing: backingStoreType, defer: flag)
        
        self.level = NSWindow.Level(rawValue: NSWindow.Level.RawValue(CGWindowLevelForKey(CGWindowLevelKey.desktopWindow) - 1))
        
    }
    
    override var canBecomeMain: Bool{
        return false;
    }
    
    override var canBecomeKey: Bool{
        return false;
    }
    
    
    
}

