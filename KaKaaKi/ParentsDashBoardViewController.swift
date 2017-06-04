//
//  ParentsDashBoardViewController.swift
//  KaKaaKi
//
//  Created by Sunil Gurung on 6/4/17.
//  Copyright © 2017 impactit. All rights reserved.
//

import UIKit
import PageMenu

class ParentsDashBoardViewController: UIViewController, CAPSPageMenuDelegate {

    var pageMenu : CAPSPageMenu?
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var informationView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //SWReavel Controller
        btnMenu.target = revealViewController()
        btnMenu.action = #selector(SWRevealViewController.revealToggle(_:))
        
        //PageMenu
        
        // Array to keep track of controllers in page menu
        var controllerArray : [UIViewController] = []
        
        // Create variables for all view controllers you want to put in the
        // page menu, initialize them, and add each to the controller array.
        // (Can be any UIViewController subclass)
        // Make sure the title property of all view controllers is set
        // Example:
        
        var basicinfocontroller: UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "basicinfoview"))!
        basicinfocontroller.title = "BASIC INFO"
        controllerArray.append(basicinfocontroller)
        
        var gradecontroller: UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "gradeview"))!
        gradecontroller.title = "GRADE"
        controllerArray.append(gradecontroller)
        
        
        var testcontroller: UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "testview"))!
        testcontroller.title = "TEST"
        controllerArray.append(testcontroller)
        
        var teachernotecontroller: UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "teachernoteview"))!
        teachernotecontroller.title = "TEACHER NOTE"
        controllerArray.append(teachernotecontroller)
        
        
        var feedetailcontroller: UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "feedetailview"))!
        feedetailcontroller.title = "FEE DETAILS"
        controllerArray.append(feedetailcontroller)
        
        var busfarecontroller: UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "busfareview"))!
        busfarecontroller.title = "BUS FARES"
        controllerArray.append(busfarecontroller)
        
        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
        // Example:
        var parameters: [CAPSPageMenuOption] = [
            .scrollMenuBackgroundColor(.white),
            .viewBackgroundColor(.white),
            .selectionIndicatorColor(.white),
            .bottomMenuHairlineColor(.white),
            .menuHeight(50.0),
            .menuItemWidth(self.view.frame.width/3),
            .centerMenuItems(true),
            .selectedMenuItemLabelColor(.red),
            .unselectedMenuItemLabelColor(.black),
            .menuMargin(0.0)
            
            
        ]
        
          // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: self.view.frame, pageMenuOptions: parameters)
     
        self.informationView.addSubview(pageMenu!.view)
        
        // Optional delegate
        pageMenu!.delegate = self as? CAPSPageMenuDelegate
        
        
        func willMoveToPage(controller: UIViewController, index: Int){}
        
        func didMoveToPage(controller: UIViewController, index: Int){}
    }

  
}
