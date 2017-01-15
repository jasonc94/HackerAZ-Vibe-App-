//
//  ProfileViewController.swift
//  HackerAZ2017
//
//  Created by william chen on 1/14/17.
//  Copyright © 2017 Jason Cai. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var profileImage: UIImageView!

    @IBOutlet weak var tableView: UITableView!
    var musics: musicList = musicList()
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        profileImage.image  = UIImage(named:"profilePic.jpg")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileMusicCell", for: indexPath) as! profileMusicCell
        print("entered")
        
        cell.song.text = musics.dropLibrary[indexPath.row]["artist-song"]!
        cell.location.text = musics.dropLibrary[indexPath.row]["location"]!
        cell.upvotes.text = musics.dropLibrary[indexPath.row]["upvotes"]!
        let cell_Image = UIImage(named: musics.dropLibrary[indexPath.row]["coverImage"]!)
        cell.imageView?.image = cell_Image
        return cell
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
