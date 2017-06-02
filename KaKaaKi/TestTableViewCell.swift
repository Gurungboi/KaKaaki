//
//  TestTableViewCell.swift
//  SMA
//
//  Created by Sunil Gurung on 5/9/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblsubjectname: UILabel!
    @IBOutlet weak var lblexamdate: UILabel!
    @IBOutlet weak var lblterminal: UILabel!
    @IBOutlet weak var lblpassmark: UILabel!
    @IBOutlet weak var lblfullmark: UILabel!
    @IBOutlet weak var lblobtainedmark: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
