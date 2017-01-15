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

    override func viewDidLoad() {
        super.viewDidLoad()
        logo.image  = UIImage(named:"logo.png")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

