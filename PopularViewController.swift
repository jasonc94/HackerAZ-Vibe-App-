//
//  PopularViewController.swift
//  HackerAZ2017
//
//  Created by Wilson Chen on 14/01/2017.
//  Copyright © 2017 Jason Cai. All rights reserved.
//

import UIKit

class PopularViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
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
        return musics.topLibrary.count
    }
   
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        print("entered")
        let cell = tableView.dequeueReusableCell(withIdentifier: "PopularCell", for: indexPath) as! PopularCell
        print("entered")
        
        cell.song.text = musics.topLibrary[indexPath.row]["artist-song"]!
        cell.location.text = musics.topLibrary[indexPath.row]["location"]!
        cell.upvotes.text = musics.topLibrary[indexPath.row]["upvotes"]!
        let cell_Image = UIImage(named: musics.topLibrary[indexPath.row]["coverImage"]!)
        cell.imageView?.image = cell_Image
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedIndex: IndexPath = self.tableView.indexPath(for: sender as! UITableViewCell)!
        if(segue.identifier == "toMusicControl"){
            if let details : musicController = segue.destination as? musicController {
                //pass the index to next view
                details.index = selectedIndex.row
                //pass an array of dictionary to next view
                details.list = musics.topLibrary
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
