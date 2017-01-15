//
//  ViewController.swift
//  HackerAZ2017
//
//  Created by Jason Cai on 1/14/17.
//  Copyright © 2017 Jason Cai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var gif: UIImageView!
  

    override func viewDidLoad() {
        super.viewDidLoad()
        logo.image  = UIImage(named:"logo.png")
        // Do any additional setup after loading the view, typically from a nib.
        gif.animationImages = [
            UIImage(named: "frame_0_delay-0.04s.jpg")!,
            UIImage(named: "frame_1_delay-s.jpg")!,
            UIImage(named: "frame_2_delay-s.jpg")!,
            UIImage(named: "frame_3_delay-s.jpg")!,
            UIImage(named: "frame_4_delay-s.jpg")!,
            UIImage(named: "frame_5_delay-s.jpg")!,
            UIImage(named: "frame_6_delay-s.jpg")!,
            UIImage(named: "frame_7_delay-s.jpg")!,
            UIImage(named: "frame_8_delay-s.jpg")!,
            UIImage(named: "frame_9_delay-s.jpg")!,
            UIImage(named: "frame_11_delay-s.jpg")!,
            UIImage(named: "frame_12_delay-s.jpg")!,
            UIImage(named: "frame_13_delay-s.jpg")!,
            UIImage(named: "frame_14_delay-s.jpg")!,
            UIImage(named: "frame_15_delay-s.jpg")!,
            UIImage(named: "frame_16_delay-s.jpg")!,
            UIImage(named: "frame_17_delay-s.jpg")!,
            UIImage(named: "frame_18_delay-s.jpg")!,
            UIImage(named: "frame_19_delay-s.jpg")!,
            UIImage(named: "frame_20_delay-s.jpg")!,
            UIImage(named: "frame_21_delay-s.jpg")!,
            UIImage(named: "frame_22_delay-s.jpg")!,
            UIImage(named: "frame_23_delay-s.jpg")!,
            
        ]
        gif.animationDuration = 1;
        gif.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

