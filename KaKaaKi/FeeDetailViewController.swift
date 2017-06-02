//
//  FeeDetailViewController.swift
//  SMA
//
//  Created by Sunil Gurung on 5/9/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

class FeeDetailViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    var Feename = ["Monthly","Lab Fee"]
    var price = ["Rs.4000","Rs.200"]

    @IBOutlet weak var feeView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Feename.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellFee = tableView.dequeueReusableCell(withIdentifier: "feeCell", for: indexPath) as! FeeDetailTableViewCell
        
        
        cellFee.lblfeename.text = Feename[indexPath.row]
        cellFee.lblprice.text = price[indexPath.row]
        
        
        return (cellFee)
        
    }


}
