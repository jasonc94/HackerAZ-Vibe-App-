//
//  profileMusicCell.swift
//  HackerAZ2017
//
//  Created by william chen on 1/14/17.
//  Copyright © 2017 Jason Cai. All rights reserved.
//

import UIKit

class profileMusicCell: UITableViewCell {
    @IBOutlet weak var albumCoverImage: UIImageView!
    @IBOutlet weak var song: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var upvotes: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
