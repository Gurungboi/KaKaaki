//
//  BusFareViewController.swift
//  SMA
//
//  Created by Sunil Gurung on 5/9/17.
//  Copyright © 2017 Impactit. All rights reserved.
//

import UIKit

struct busInfo{
    let busRoute: Int
    let busTime: String
    let staffName: String
    let staffContact: String
    let busNumber: Int
}

class BusFareViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var businfos = [busInfo]()
    @IBOutlet weak var busView: UITableView!
    
    var bus = ["Bus Route","Bus Time","Driver Name","Drive Number","Bus Number"]
    var busdetails = ["C","9.30 am","John Doe","9840061291","2351"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getbusInfo()
        // Do any additional setup after loading the view.
    }
    
    
    func getbusInfo(){
        
        if let path = Bundle.main.path(forResource: "student-detail", ofType: "json") {
            
            
            let url = URL(fileURLWithPath: path)
            
            do{
                let data = try  Data(contentsOf: url)
                let json: NSDictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! NSDictionary
                print(json)
                let busDict: NSDictionary = json.object(forKey: "student")! as! NSDictionary
                //print(busDict.object(forKey: "vehicle_id")!)
                let busRoutes = busDict.object(forKey: "vehicle_id") as? Int
                let busTimes = busDict.object(forKey: "pickup_time") as? String
                let staffNames = busDict.object(forKey: "staff_name") as? String
                let staffContacts = busDict.object(forKey: "staff_contact") as? String
                let busNumbers = busDict.object(forKey: "vehicle_id") as? Int
                
                print(busRoutes)
                print(busTimes)
                print(staffNames)
                print(staffContacts)
                print(busNumbers)
                
                let bus = busInfo(busRoute: busRoutes!, busTime: busTimes!, staffName: staffNames!, staffContact: staffContacts!, busNumber: busNumbers!)
             
                businfos.append(bus)
                //
                
            }
            catch{
                print("Error")
            }
            
            self.busView.reloadData()
        }
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return businfos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellBus = tableView.dequeueReusableCell(withIdentifier: "busCell", for: indexPath) as! BusFareTableViewCell
        
        
//        cellBus.lblbus.text = bus[indexPath.row]
//        cellBus.lblbusdetail.text = busdetails[indexPath.row]
//        
        let bus = businfos[indexPath.row]
        
        cellBus.lblbusroutedetail.text = String(bus.busRoute)
        cellBus.lblbustimedetails.text = bus.busTime
        cellBus.lblstaffnamedetail.text = bus.staffName
        cellBus.lblstaffcontactdetail.text = bus.staffContact
        cellBus.lblbusnumberdetail.text = String(bus.busNumber)


        return (cellBus)
        
    }

}
