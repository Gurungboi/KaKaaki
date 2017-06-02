//
//  TeacherNoteTableViewCell.swift
//  SMA
//
//  Created by Sunil Gurung on 5/9/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

class TeacherNoteTableViewCell: UITableViewCell {

    @IBOutlet weak var lblheader: UILabel!
    @IBOutlet weak var lblnote: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
