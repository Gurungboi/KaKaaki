//
//  teacherNoticeViewController.swift
//  KaKaaKi
//
//  Created by Sunil Gurung on 6/2/17.
//  Copyright © 2017 impactit. All rights reserved.
//

import UIKit
struct teacherNotice{
    let title: String
    let description: String
}


class teacherNoticeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var teacherNotices = [teacherNotice]()
    
    
    @IBOutlet weak var teacherNoticeView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getTeacherNoticeInfo()
    }


    
        func getTeacherNoticeInfo(){
            guard let path = Bundle.main.path(forResource: "notice", ofType: "json") else {return}
            let url = URL(fileURLWithPath: path)
    
            do{
                let data = try  Data(contentsOf: url)
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                //print(json)
    
                guard let array = json as?[Any] else {return}
                for teacherNoticeinfo in array{
                    guard let teacherNoticeDict = teacherNoticeinfo as?[String: Any] else {return}
                    guard let noticeTitle = teacherNoticeDict["title"] as? String else{return }
                    guard let noticeDescription = teacherNoticeDict["description"] as? String else {return}
                    //guard let teacherEmails = teacherNoticeDict["published_date"] as? String else {return}
                   
    
                    //print (noticeTitle)
                    //print (noticeDescription)
                    
                   let tnotice = teacherNotice(title: noticeTitle, description: noticeDescription)
    
                    teacherNotices.append(tnotice)
                }
            }
            catch{
                print("Error")
            }
            self.teacherNoticeView.reloadData()
            //print(path)
        }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teacherNotices.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellTeacherNotice = tableView.dequeueReusableCell(withIdentifier: "teachernoticeCell", for: indexPath) as! teacherNoticeTableViewCell
        
        //cellInformation.informationicon.image=UIImage(named: informationicon[indexPath.row])
        //cellInformation.lblinformation.text = detailinformation[indexPath.row]
        
        let tnotice = teacherNotices[indexPath.row]
        cellTeacherNotice.lbltitle.text = tnotice.title
        cellTeacherNotice.lbldescription.text = tnotice.description
      
        
        return (cellTeacherNotice)
        
    }
    
    
    

}
