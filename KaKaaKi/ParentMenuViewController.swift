//
//  ParentMenuViewController.swift
//  KaKaaKi
//
//  Created by Sunil Gurung on 6/4/17.
//  Copyright © 2017 impactit. All rights reserved.
//

import UIKit

class ParentMenuViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    var menuNameArray: Array = [String()]
    var imageiconArray: Array = [UIImage]()
    
    @IBOutlet weak var parentmenuView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        menuNameArray = ["Home","Teacher Info"]
        imageiconArray = [UIImage(named: "nepal1")!,UIImage(named: "nepal1")!]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "parentmenuCell", for: indexPath) as! ParentMenuTableViewCell
        cell.lblmenuname.text! = menuNameArray[indexPath.row]
        cell.imgicon.image = imageiconArray[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let revealViewController:SWRevealViewController = self.revealViewController()
        let cell:ParentMenuTableViewCell = tableView.cellForRow(at: indexPath) as! ParentMenuTableViewCell
        
        if cell.lblmenuname.text! == "Home"
        {
            let mainstory:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainstory.instantiateViewController(withIdentifier: "parentDashBoard") as! ParentsDashBoardViewController
            let newFrontViewController = UINavigationController.init(rootViewController: desController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.lblmenuname.text! == "Teacher Info"
        {
            let mainstory:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainstory.instantiateViewController(withIdentifier: "teacherInfoVC") as! TeacherViewController
            let newFrontViewController = UINavigationController.init(rootViewController: desController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
    }
    
}
