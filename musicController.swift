//
//  musicController.swift
//  HackerAZ2017
//
//  Created by Jason Cai on 1/14/17.
//  Copyright © 2017 Jason Cai. All rights reserved.
//


import UIKit
import AVFoundation

class musicController: UIViewController {

  
    @IBOutlet weak var musicTitle: UILabel!
    @IBOutlet weak var musicImg: UIImageView!
    @IBOutlet var musicProgress: UIView!
    @IBOutlet weak var votes: UILabel!

    

    var index:Int?
    var list = [Dictionary<String, String>]()
    var audioPlayer:AVAudioPlayer!
    
    
    override func viewDidLoad() {
        votes.textColor=UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        super.viewDidLoad()
        musicTitle.text = list[index!]["artist-song"]!
        musicImg.image = UIImage(named: list[index!]["coverImage"]!)
        votes.text = "Upvotes:" + list[index!]["upvotes"]!
        let audioFilePath = Bundle.main.path(forResource: list[index!]["index"]!, ofType: "mp3")
        
        let audioFileUrl = NSURL.fileURL(withPath: audioFilePath!)
        
        audioPlayer = try! AVAudioPlayer(contentsOf: audioFileUrl)
        audioPlayer.play()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func playMusic(_ sender: UIButton) {
        if(audioPlayer.isPlaying == false){
            audioPlayer.play()
        }
        
    }
    
    @IBAction func pause(_ sender: UIButton) {
        if(audioPlayer.isPlaying == true){
            audioPlayer.pause()
        }
    }
    
    @IBAction func nextSong(_ sender: UIButton) {
        if(index!<list.count-1){
            index! += 1
            musicTitle.text = list[index!]["artist-song"]!
            musicImg.image = UIImage(named: list[index!]["coverImage"]!)
            votes.text = "Upvotes:" + list[index!]["upvotes"]!
            let audioFilePath = Bundle.main.path(forResource: list[index!]["index"]!, ofType: "mp3")
            
            let audioFileUrl = NSURL.fileURL(withPath: audioFilePath!)
            
            audioPlayer = try! AVAudioPlayer(contentsOf: audioFileUrl)
            audioPlayer.play()
        }
        else{
            index = 0
            musicTitle.text = list[index!]["artist-song"]!
            musicImg.image = UIImage(named: list[index!]["coverImage"]!)
            votes.text = "Upvotes:" + list[index!]["upvotes"]!
            let audioFilePath = Bundle.main.path(forResource: list[index!]["index"]!, ofType: "mp3")
            
            let audioFileUrl = NSURL.fileURL(withPath: audioFilePath!)
            
            audioPlayer = try! AVAudioPlayer(contentsOf: audioFileUrl)
            audioPlayer.play()
        }
    }
    
    @IBAction func previousSong(_ sender: UIButton) {
        if(index!>1){
            index! -= 1
            musicTitle.text = list[index!]["artist-song"]!
            musicImg.image = UIImage(named: list[index!]["coverImage"]!)
            votes.text = "Upvotes:" + list[index!]["upvotes"]!
            let audioFilePath = Bundle.main.path(forResource: list[index!]["index"]!, ofType: "mp3")
            
            let audioFileUrl = NSURL.fileURL(withPath: audioFilePath!)
            
            audioPlayer = try! AVAudioPlayer(contentsOf: audioFileUrl)
            audioPlayer.play()
        }
        else{
            index = list.count-1
            musicTitle.text = list[index!]["artist-song"]!
            musicImg.image = UIImage(named: list[index!]["coverImage"]!)
            votes.text = "Upvotes:" + list[index!]["upvotes"]!
            let audioFilePath = Bundle.main.path(forResource: list[index!]["index"]!, ofType: "mp3")
            
            let audioFileUrl = NSURL.fileURL(withPath: audioFilePath!)
            
            audioPlayer = try! AVAudioPlayer(contentsOf: audioFileUrl)
            audioPlayer.play()
        }
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
