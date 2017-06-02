//
//  TeacherInfoTableViewCell.swift
//  KaKaaKi
//
//  Created by Sunil Gurung on 6/2/17.
//  Copyright © 2017 impactit. All rights reserved.
//

import UIKit

class TeacherInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lbladdress: UILabel!
    @IBOutlet weak var lblemail: UILabel!
    @IBOutlet weak var lblphone: UILabel!
    @IBOutlet weak var lblsubject: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
