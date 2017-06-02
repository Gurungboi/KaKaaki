//
//  BasicInfoTableViewCell.swift
//  SMA
//
//  Created by Sunil Gurung on 5/9/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

class BasicInfoTableViewCell: UITableViewCell {


    @IBOutlet weak var lblparentname: UILabel!
    @IBOutlet weak var lblparentnameetails: UILabel!
    
    @IBOutlet weak var lbloccupation: UILabel!
    @IBOutlet weak var lbloccupationdetails: UILabel!
    
    @IBOutlet weak var lblcontact: UILabel!
    @IBOutlet weak var lblcontactdetails: UILabel!
    
    @IBOutlet weak var lblemail: UILabel!
    @IBOutlet weak var lblemaildetails: UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
