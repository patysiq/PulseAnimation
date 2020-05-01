//
//  PulseAnimacionController.swift
//  PulseAnimation
//
//  Created by Patricia Sampaio on 01/05/20.
//  Copyright © 2020 Patricia Sampaio. All rights reserved.
//

import UIKit
import Foundation


class PulseAnimacionController: UIViewController {
    
    @IBOutlet weak var bnt: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    bnt.layer.cornerRadius = bnt.frame.height / 2
    bnt.clipsToBounds = true
    }
    
    @IBAction func onClickBnt(_ sender: UIButton) {
        let pulse = PulseAnimation.init(numberOfPulses: 4, radius: 200, position: sender.center)
        pulse.animationDuration = 1.0
        pulse.backgroundColor = #colorLiteral(red: 0.6148123741, green: 0.1017967239, blue: 0.1002308354, alpha: 1)
        self.view.layer.insertSublayer(pulse, below: self.view.layer)
        
    }
    
}


