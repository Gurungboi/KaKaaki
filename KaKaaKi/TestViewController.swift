//
//  TestViewController.swift
//  SMA
//
//  Created by Sunil Gurung on 5/9/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var testView: UITableView!
    
    var subjectname = ["Home Science","Home Science","Home Science","Home Science"]
    var examdate = ["May 8, 2017","May 8, 2017","May 8, 2017","May 8, 2017"]
    var terminal = ["First Terminal Examination","First Terminal Examination","First Terminal Examination","First Terminal Examination"]
    var passmark = ["40","40","40","40"]
    var fullmark = ["100","100","100","100"]
    var obtainedmark = ["40","40","40","40"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return subjectname.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellTest = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as! TestTableViewCell
        
        
        cellTest.lblsubjectname.text = subjectname[indexPath.row]
        cellTest.lblexamdate.text = examdate[indexPath.row]
         cellTest.lblterminal.text = terminal[indexPath.row]
         cellTest.lblpassmark.text = passmark[indexPath.row]
         cellTest.lblfullmark.text = fullmark[indexPath.row]
         cellTest.lblobtainedmark.text = obtainedmark[indexPath.row]
        
        return (cellTest)
        
    }

    
}
