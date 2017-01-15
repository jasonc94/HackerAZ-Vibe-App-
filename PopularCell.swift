//
//  PopularCell.swift
//  HackerAZ2017
//
//  Created by Wilson Chen on 14/01/2017.
//  Copyright © 2017 Jason Cai. All rights reserved.
//

import UIKit

class PopularCell: UITableViewCell {
    @IBOutlet weak var albumCover: UIImageView!
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
