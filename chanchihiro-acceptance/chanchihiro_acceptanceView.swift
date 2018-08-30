//
//  chanchihiro_acceptanceView.swift
//  chanchihiro-acceptance
//
//  Created by noguchi-chihiro on 2018/08/30.
//  Copyright © 2018年 noguchi-chihiro. All rights reserved.
//

import Foundation
import ScreenSaver

class TextSaverView: ScreenSaverView {
    
    let dateFormatter = DateFormatter()
    var textRect: NSRect!
    var textAttributes: [String: Any] = [:]
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setAttributes()
    }
    
    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
        self.setAttributes()
    }
    
    override func startAnimation() {
        super.startAnimation()
    }
    
    override func stopAnimation() {
        super.stopAnimation()
    }
    
    func setAttributes() {
        let w = self.bounds.size.width
        let h = self.bounds.size.height
        
        self.dateFormatter.dateFormat = "yy:MM:dd:HH:mm:ss:SS"
        
        let fontSize = w / CGFloat(self.dateFormatter.dateFormat.count - 1)
        self.textRect = NSMakeRect(0, 0, w, h / 2 + fontSize)
        
        let shadow = NSShadow()
        shadow.shadowColor = NSColor.red
        shadow.shadowBlurRadius = fontSize / 4.0
        self.textAttributes = [
            NSForegroundColorAttributeName: NSColor.red,
            NSShadowAttributeName: shadow,
        ]
    }
    
    override func animateOneFrame() {
        NSBezierPath(rect: self.bounds).fill()
        let text = self.dateFormatter.string(from: Date())
        text.draw(in: self.textRect, withAttributes: self.textAttributes)
    }
    
}
