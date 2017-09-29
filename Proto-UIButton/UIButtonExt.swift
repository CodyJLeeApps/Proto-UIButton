//
//  UIButtonExt.swift
//  
//
//  Created by Cody Lee on 9/28/17.
//

import UIKit

extension RectangleButton {
    
    func wiggle() {
        
        let wiggleAnim = CABasicAnimation(keyPath: "position")
        
        wiggleAnim.duration     = 0.05
        wiggleAnim.repeatCount  = 5
        
        wiggleAnim.autoreverses = true
        wiggleAnim.fromValue    = CGPoint(x: (self.center.x - 4.0), y: self.center.y)
        wiggleAnim.toValue      = CGPoint(x: (self.center.x + 4.0), y: self.center.y)
        
        layer.add(wiggleAnim, forKey: "position")
    }
    
    func dim() {
        
        UIView.animate(withDuration: 0.15, animations: {
            self.alpha = 0.75
        }) { (finished) in
            UIView.animate(withDuration: 0.15, animations: {
                self.alpha = 1.0
            })
        }
        
    }
    
    func colorize() {
        
        let randomNumberArray = generateRandomNumbers(quantity: 3)
        let randomColor = UIColor(red   : randomNumberArray[0]/255,
                                  green : randomNumberArray[1]/255,
                                  blue  : randomNumberArray[2]/255,
                                  alpha : 1.0)
        
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = randomColor
        }
        
    }
    
    func setBackgroundColor(color: UIColor, forState: UIControlState) {
        
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext()!.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()!.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.setBackgroundImage(colorImage, for: forState)
    }
    
}
