//
//  StudentAttendantTableViewCell.swift
//  SMA
//
//  Created by Sunil Gurung on 5/15/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

class StudentAttendantTableViewCell: UITableViewCell {

    @IBOutlet weak var lblstudentname: UILabel!
    @IBOutlet weak var switchattendant: UISwitch!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
