//
//  StatsLives.swift
//  StuffedAnimalMortalKombat
//
//  Created by Whitney Lauren on 6/12/15.
//  Copyright (c) 2015 Whitney Lauren. All rights reserved.
//

import UIKit

@IBDesignable class StatsLives: UIView {
    
    @IBInspectable var lifeCount: Int = 3 {
        
        didSet { setNeedsDisplay() }
        
        
        
    }
    
    @IBInspectable var padding: CGFloat = 5
    @IBInspectable var color: UIColor = UIColor.blackColor()
    
        override func drawRect(rect: CGRect) {
            
            let context = UIGraphicsGetCurrentContext()
            
            color.set()
            
            let  hw = rect.height
        
            for i in 0..<lifeCount {
                
                let x = rect.width - hw - ((hw + 5) * CGFloat(i))
                
                let lifeRect = CGRectMake(x, 0, hw, hw)
                
                CGContextFillEllipseInRect(context, lifeRect)
                
                
                
                
            }
        
        }
    }

