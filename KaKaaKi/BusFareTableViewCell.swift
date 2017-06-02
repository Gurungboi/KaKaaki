//
//  BusFareTableViewCell.swift
//  SMA
//
//  Created by Sunil Gurung on 5/9/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

class BusFareTableViewCell: UITableViewCell {

    @IBOutlet weak var lblbusroute: UILabel!
    @IBOutlet weak var lblbusroutedetail: UILabel!
    
    
    @IBOutlet weak var lblbustime: UILabel!
    @IBOutlet weak var lblbustimedetails: UILabel!
   
    @IBOutlet weak var lblstaffname: UILabel!
    @IBOutlet weak var lblstaffnamedetail: UILabel!

    @IBOutlet weak var lblstaffcontact: UILabel!
    @IBOutlet weak var lblstaffcontactdetail: UILabel!

    @IBOutlet weak var lblbusnumber: UILabel!
    @IBOutlet weak var lblbusnumberdetail: UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
