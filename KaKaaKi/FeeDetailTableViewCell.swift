//
//  FeeDetailTableViewCell.swift
//  SMA
//
//  Created by Sunil Gurung on 5/9/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

class FeeDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var lblfeename: UILabel!
    @IBOutlet weak var lblprice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
