//
//  MenuViewController.swift
//  TestPopOverView
//
//  Created by Suryakant Sharma on 27/08/15.
//  Copyright (c) 2015 WAH Holidays Pvt. Ltd. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {

    
    @IBOutlet weak var tableView : UITableView!
    var menuArray : NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self;
        tableView.delegate   = self;
        
        menuArray = ["Edit Profile", "Logout"];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK: - UITableView DataSource methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 2;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = menuArray[indexPath.row] as? String;
        if(0 == indexPath.row){
            cell.imageView?.image = UIImage(named: "edit");
        }
        else{
            cell.imageView?.image = UIImage(named: "logout");
        }

        
        return cell;
    }
    
    //MARK: - UITableView Delegate methods
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
        if(0 == indexPath.row){
            NSLog("Edit Option selected");
        }
        else{
            NSLog("Logout Option selected");

        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true);
        self.dismissViewControllerAnimated(true, completion: nil);
    }

}
