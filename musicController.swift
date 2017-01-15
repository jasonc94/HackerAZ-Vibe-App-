//
//  musicController.swift
//  HackerAZ2017
//
//  Created by Jason Cai on 1/14/17.
//  Copyright © 2017 Jason Cai. All rights reserved.
//

import UIKit

class musicController: UIViewController {

  
    @IBOutlet weak var musicTitle: UILabel!
    @IBOutlet weak var musicImg: UIImageView!
    @IBOutlet var musicProgress: UIView!
    @IBOutlet weak var loop: UIButton!
    @IBOutlet weak var play: UIButton!
    @IBOutlet weak var votes: UILabel!
    @IBOutlet weak var previous: UIButton!
    @IBOutlet weak var pause: UIButton!
    @IBOutlet weak var nextSong: UIButton!
    
    var mTitle:String = ""
    var mImg:String = ""
    var mVotes:String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        musicTitle.text = mTitle
        musicImg.image = UIImage(named: mImg)
        //votes.text = mVotes

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
