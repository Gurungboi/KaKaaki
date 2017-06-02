//
//  TeacherInfoViewController.swift
//  KaKaaKi
//
//  Created by Sunil Gurung on 6/2/17.
//  Copyright © 2017 impactit. All rights reserved.
//

import UIKit

struct teacherinfo {
    let teacherName: String
    let teacherAddress: String
    let teacherEmail: String
    let teacherPhone: String
    let teacherSubject: String
}

class TeacherInfoViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource, UITableViewDataSource,UITableViewDelegate {


    
    @IBOutlet weak var infoView: UITableView!
    @IBOutlet weak var staffcollectionview: UICollectionView!
    
    var teacherinfos = [teacherinfo]()
    
    var teacher = ["nepal1","nepal2","nepal3"]
    var staffname = ["Principal","BOD","Vice Principal"]
    
    //Collection Identifieder
    let  teachercollectionviewIdentifier = "staffCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getTeacherInfo()
        
        staffcollectionview.delegate = self
        staffcollectionview.dataSource = self
        infoView.delegate = self
        infoView.dataSource = self

    }

    func getTeacherInfo(){
        
        if let path = Bundle.main.path(forResource: "teacher", ofType: "json") {
            
            
            let url = URL(fileURLWithPath: path)
            
            do{
                let data = try  Data(contentsOf: url)
                let json: NSDictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! NSDictionary
                
                let teachInfo: NSDictionary = json.object(forKey: "teachers")! as! NSDictionary
                //let principalInfo: NSDictionary = json.object(forKey: "principal")! as! NSDictionary
                //print(teacherInfo.object(forKey: "contact"))
                let teacherNames = teachInfo.object(forKey: "fullname") as? String
                let teacherAddresss = teachInfo.object(forKey: "address") as? String
                let teacherEmails = teachInfo.object(forKey: "email") as? String
                let teacherPhones = teachInfo.object(forKey: "contact") as? String
                let teacherSubject = teachInfo.object(forKey: "subject") as? String
                
                let teacher = teacherinfo(teacherName: teacherNames!, teacherAddress: teacherAddresss!, teacherEmail: teacherEmails!, teacherPhone: teacherPhones!, teacherSubject: teacherSubject!)
                teacherinfos.append(teacher)
                
            }
            catch{
                print("Error")
            }
            
            self.infoView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teacherinfos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celltechInfo = tableView.dequeueReusableCell(withIdentifier: "informationCell", for: indexPath) as! TeacherInfoTableViewCell
        
        let teacher = teacherinfos[indexPath.row]
        celltechInfo.lblname.text = teacher.teacherName
        celltechInfo.lbladdress.text = teacher.teacherAddress
        celltechInfo.lblemail.text = teacher.teacherEmail
        celltechInfo.lblphone.text = teacher.teacherPhone
        celltechInfo.lblsubject.text = teacher.teacherSubject
        
        return (celltechInfo)
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return video.count
        
        return teacher.count // Replace with count of your data for collectionViewB
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cellStaff = collectionView.dequeueReusableCell(withReuseIdentifier: "staffCell", for: indexPath) as! TeacherInfoCollectionViewCell
        
        cellStaff.layer.cornerRadius = 5
        cellStaff.layer.borderColor = UIColor.white.cgColor
        cellStaff.layer.borderWidth = 1
        cellStaff.staffimage.image = UIImage(named: teacher[indexPath.row])
        cellStaff.lblstaff.text = staffname[indexPath.row]
        
        return cellStaff
    }
    

   
}
