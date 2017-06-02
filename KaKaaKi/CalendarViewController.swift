//
//  CalendarViewController.swift
//  SMA
//
//  Created by Sunil Gurung on 5/9/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {

   
    @IBOutlet weak var btnmenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        //SWRevealVC
        
//        btnmenu.target = self.revealViewController()
//        btnmenu.action = #selector(SWRevealViewController.revealToggle(_:))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
