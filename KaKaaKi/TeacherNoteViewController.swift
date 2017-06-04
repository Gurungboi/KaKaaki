//
//  TeacherNoteViewController.swift
//  SMA
//
//  Created by Sunil Gurung on 5/9/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

struct teachernotice {
    let title : String
    let description : String
}

class TeacherNoteViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    var teachernotices = [teachernotice]()
    @IBOutlet weak var noteView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        getTeacherNote()
        // Do any additional setup after loading the view.
    }
    

    func getTeacherNote(){
        guard let path = Bundle.main.path(forResource: "notice", ofType: "json") else {return}
        let url = URL(fileURLWithPath: path)
        
        do{
            let data = try  Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            //print(json)
            
            guard let array = json as?[Any] else {return}
            for teacherNoticeinfo in array{
                guard let teacherNoticeDict = teacherNoticeinfo as?[String: Any] else {return}
                guard let noteTitle = teacherNoticeDict["title"] as? String else{return }
                guard let noteDescription = teacherNoticeDict["description"] as? String else {return}
                //guard let teacherEmails = teacherNoticeDict["published_date"] as? String else {return}
                
                
                //print (noticeTitle)
                //print (noticeDescription)
                
                //let teachnotice = teacherNotice(title: noticeTitle, description: noticeDescription)
                let teachernote = teachernotice(title: noteTitle, description: noteDescription)
                teachernotices.append(teachernote)
            }
        }
        catch{
            print("Error")
        }
        self.noteView.reloadData()
        //print(path)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teachernotices.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellNote = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath) as! TeacherNoteTableViewCell
        
        
       // cellNote.lblheader.text = Header[indexPath.row]
       // cellNote.lblnote.text = note[indexPath.row]
        let teachernote = teachernotices[indexPath.row]
        cellNote.lblheader.text = teachernote.title
        cellNote.lblnote.text = teachernote.description
        return (cellNote)
        
    }


}
