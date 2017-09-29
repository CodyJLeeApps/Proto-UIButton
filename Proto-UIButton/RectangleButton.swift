//
//  RectangleButton.swift
//  BlueToothSniffer
//
//  Created by Cody Lee on 6/11/17.
//  Copyright © 2017 CodyJLee Apps. All rights reserved.
//

import UIKit

class RectangleButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // round corners
        self.layer.cornerRadius = frame.height/BTN_RECT_CORNER_RADIUS
        
        // Set background colors for default and selected states
        // See Constants.swift file for definitions
        // Set default background color
        /*
        self.setBackgroundColor(color: UIColor(red:   BTN_RECT_BACKGND_GREY,
                                               green: BTN_RECT_BACKGND_GREY,
                                               blue:  BTN_RECT_BACKGND_GREY,
                                               alpha: 1.0),
                                forState: .normal)
        
        // Set highlighted background color
        self.setBackgroundColor(color: UIColor(red:   BTN_RECT_BACKGND_GREY_HGHLT,
                                               green: BTN_RECT_BACKGND_GREY_HGHLT,
                                               blue:  BTN_RECT_BACKGND_GREY_HGHLT,
                                               alpha: 1.0),
                                forState: .highlighted)
         */
        
        //**** set button shadow ****/
        //self.layer.shadowPath
        self.layer.shadowColor      = UIColor(red:  BTN_RECT_SHADOW_CLR,
                                              green:BTN_RECT_SHADOW_CLR,
                                              blue: BTN_RECT_SHADOW_CLR,
                                              alpha:1.0).cgColor
        self.layer.shadowOpacity    = 0.8
        self.layer.shadowOffset     = CGSize(width: -1.0, height: 1.0)
        self.layer.shadowRadius     = 3.0
        
        
        // Clip the background to the bounds of the button
        self.clipsToBounds = true
    }
    
} // End RectangleButton
