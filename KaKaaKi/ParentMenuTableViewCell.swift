//
//  ParentMenuTableViewCell.swift
//  KaKaaKi
//
//  Created by Sunil Gurung on 6/4/17.
//  Copyright © 2017 impactit. All rights reserved.
//

import UIKit

class ParentMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var imgicon: UIImageView!
    @IBOutlet weak var lblmenuname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
