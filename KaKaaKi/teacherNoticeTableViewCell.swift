//
//  teacherNoticeTableViewCell.swift
//  KaKaaKi
//
//  Created by Sunil Gurung on 6/2/17.
//  Copyright © 2017 impactit. All rights reserved.
//

import UIKit

class teacherNoticeTableViewCell: UITableViewCell {

    @IBOutlet weak var lbltitle: UILabel!
    @IBOutlet weak var lbldescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
