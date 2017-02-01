//
//  GuitarCustomViewCell.swift
//  guitarList
//
//  Created by Carlos Alfonso on 1/18/17.
//  Copyright © 2017 Carlos Alfonso. All rights reserved.
//

import UIKit

class GuitarCustomViewCell: UITableViewCell {
    @IBOutlet weak var guitarTitleLabel: UILabel!

    @IBOutlet weak var guitarInfoLabel: UILabel!
    
    @IBOutlet weak var guitarPictureImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
