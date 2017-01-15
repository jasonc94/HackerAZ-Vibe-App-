//
//  musicLibraryView.swift
//  HackerAZ2017
//
//  Created by Jason Cai on 1/14/17.
//  Copyright © 2017 Jason Cai. All rights reserved.
//

import UIKit

class musicLibraryView: UIViewController {
    
    @IBOutlet weak var musicLibrary: UITableView!
    
    var musicData : musicList = musicList()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // This is a data source method that will be called when table is loaded
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicData.dropLibrary.count
    }
    
    // This datasource method will create each cell of the table
    func tableView(_ tableView: UITableView,cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath)
        
        cell.textLabel?.text = musicData.dropLibrary[indexPath.row]["artist-song"]!
        //let cell_Image = UIImage(named: "tom.jpg")
        //cell.imageView?.image = cell_Image
        
        return cell;
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
