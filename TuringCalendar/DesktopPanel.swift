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
        
        self.collectionBehavior = (NSWindow.CollectionBehavior(rawValue: NSWindow.CollectionBehavior.RawValue(UInt8(NSWindow.CollectionBehavior.canJoinAllSpaces.rawValue) |
            UInt8(NSWindow.CollectionBehavior.stationary.rawValue) |
            UInt8(NSWindow.CollectionBehavior.ignoresCycle.rawValue)))
        )
        
        self.backgroundColor = NSColor.clear
        self.isOpaque = false
        
    }
    
    override var canBecomeMain: Bool{
        return false;
    }
    
    override var canBecomeKey: Bool{
        return false;
    }
    
    
    
}

