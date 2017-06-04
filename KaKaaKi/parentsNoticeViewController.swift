//
//  parentsNoticeViewController.swift
//  KaKaaKi
//
//  Created by Sunil Gurung on 6/4/17.
//  Copyright © 2017 impactit. All rights reserved.
//

import UIKit
struct parentNotice{
    let title: String
    let description: String
}

class parentsNoticeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var parentNotices = [parentNotice]()
    
    @IBOutlet weak var parentNoticeView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getParentNoticeInfo()
    }

    func getParentNoticeInfo(){
        guard let path = Bundle.main.path(forResource: "pnotice", ofType: "json") else {return}
        let url = URL(fileURLWithPath: path)
        
        do{
            let data = try  Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            //print(json)
            
            guard let array = json as?[Any] else {return}
            for parentNoticeinfo in array{
                guard let parentNoticeDict = parentNoticeinfo as?[String: Any] else {return}
                guard let noticeTitle = parentNoticeDict["title"] as? String else{return }
                guard let noticeDescription = parentNoticeDict["description"] as? String else {return}
                //guard let teacherEmails = teacherNoticeDict["published_date"] as? String else {return}
                
                
                //print (noticeTitle)
                //print (noticeDescription)
                
                let pnotice = parentNotice(title: noticeTitle, description: noticeDescription)
                
                parentNotices.append(pnotice)
            }
        }
        catch{
            print("Error")
        }
        	self.parentNoticeView.reloadData()
        //print(path)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return parentNotices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellParentNotice = tableView.dequeueReusableCell(withIdentifier: "parentnoticeCell", for: indexPath) as! parentsNoticeTableViewCell
        
        let pnotice = parentNotices[indexPath.row]
        cellParentNotice.lbltitle.text = pnotice.title
        cellParentNotice.lbldescription.text = pnotice.description
        
        
        return (cellParentNotice)
        
    }


}
