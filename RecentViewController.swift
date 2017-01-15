//
//  RecentViewController.swift
//  HackerAZ2017
//
//  Created by Jason Cai on 1/14/17.
//  Copyright © 2017 Jason Cai. All rights reserved.
//

import UIKit

class RecentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var musics: musicList = musicList()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        return musics.recentLibrary.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        print("entered")
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecentCell", for: indexPath) as! RecentCell
        print("entered")
        
        cell.song.text = musics.recentLibrary[indexPath.row]["artist-song"]!
        cell.location.text = musics.recentLibrary[indexPath.row]["location"]!
        cell.upvotes.text = musics.recentLibrary[indexPath.row]["upvotes"]!
        let cell_Image = UIImage(named: musics.recentLibrary[indexPath.row]["coverImage"]!)
        cell.imageView?.image = cell_Image
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedIndex: IndexPath = self.tableView.indexPath(for: (sender as? UITableViewCell)!)!
        if(segue.identifier == "toMusic"){
            if let details : musicController = segue.destination as? musicController {
                //set the music name
                details.mTitle = musics.recentLibrary[selectedIndex.row]["artist-song"]!
                //set the selected place image
                details.mImg = musics.recentLibrary[selectedIndex.row]["coverImage"]!
                details.mVotes = musics.recentLibrary[selectedIndex.row]["upvotes"]!
            }
        }
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
