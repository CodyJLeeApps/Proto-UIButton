//
//  ViewController.swift
//  Proto-UIButton
//
//  Created by Cody Lee on 9/28/17.
//  Copyright © 2017 CJLeeApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var origBtn: RectangleButton!
    @IBOutlet weak var wiggleBtn: RectangleButton!
    @IBOutlet weak var colorizeBtn: RectangleButton!
    @IBOutlet weak var dimBtn: RectangleButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func origBtnTapped(_ sender: Any) {
        // Do nothing
    }
    
    @IBAction func wiggleBtnTapped(_ sender: Any) {
        wiggleBtn.wiggle()
    }
    
    @IBAction func colorizeBtnTapped(_ sender: Any) {
        colorizeBtn.colorize()
    }
    
    @IBAction func dimBtnTapped(_ sender: Any) {
        dimBtn.dim()
    }
    
    
}

