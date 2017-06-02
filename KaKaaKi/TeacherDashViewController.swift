//
//  TeacherDashViewController.swift
//  SMA
//
//  Created by Sunil Gurung on 5/10/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

class TeacherDashViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var teacherimg: UIImageView!
    @IBOutlet weak var schoolimg: UIImageView!
    @IBOutlet weak var lbldate: UILabel!
    @IBOutlet weak var studentAttendantView: UITableView!
    
    var studentname = ["Prakash Jung Rana","Prakash Jung Rana","Prakash Jung Rana","Prakash Jung Rana","Prakash Jung Rana"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //lbldate.layer.cornerRadius = 20
        //lbldate.layer.borderWidth = 2
        teacherimg.layer.cornerRadius = 50
        teacherimg.layer.borderWidth = 2
        
        //teacherimg.photo.layer.boardwidth = ...
        
        
        schoolimg.layer.cornerRadius = 50
        schoolimg.layer.borderWidth = 2
        
        studentAttendantView.delegate = self
        studentAttendantView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return studentname.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CellStudentName = tableView.dequeueReusableCell(withIdentifier: "attendantCell", for: indexPath) as! StudentAttendantTableViewCell
        
      
        CellStudentName.lblstudentname.text = studentname[indexPath.row]
        
        return CellStudentName
        
    }

}
