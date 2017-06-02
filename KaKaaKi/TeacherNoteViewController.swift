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
    
    //var Header = ["Improve Handwriting","Improve Handwriting"]
    //var note = ["Please improve your handwriting","Please improve your handwriting"]

    
    
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
            for teachernoticeinfo in array{
                guard let teachernoticeDict = teachernoticeinfo as?[String: Any] else {return}
                guard let titles = teachernoticeDict["title"] as? String else{return }
                guard let descriptions = teachernoticeDict["description"] as? String else {return}
                guard let date = teachernoticeDict["published_date"] as? String else {return}
                print (titles)
                print (descriptions)
                print (date)
                
                let teacnotice = teachernotice(title: titles, description: descriptions)
                
                teachernotices.append(teacnotice)
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
        let tnotice = teachernotices[indexPath.row]
        cellNote.lblheader.text = tnotice.title
        cellNote.lblnote.text = tnotice.description
        return (cellNote)
        
    }


}
