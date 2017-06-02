//
//  GradeViewController.swift
//  SMA
//
//  Created by Sunil Gurung on 5/9/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

class GradeViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var gradeView: UITableView!
    
    var subjectname = ["Maths","Science","English","Health","Science","English"]
    var grades = ["A+","B","A+","C","B","A+"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return subjectname.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellGrade = tableView.dequeueReusableCell(withIdentifier: "gradeCell", for: indexPath) as! GradeTableViewCell
        
        
        cellGrade.lblsubjectname.text = subjectname[indexPath.row]
        cellGrade.lblgrades.text = grades[indexPath.row]
        
        
        return (cellGrade)
        
    }


  }
