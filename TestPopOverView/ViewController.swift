//
//  ViewController.swift
//  TestPopOverView
//
//  Created by Suryakant Sharma on 27/08/15.
//  Copyright (c) 2015 WAH Holidays Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**  Present a ViewController as a popover view from Xib **/
    @IBAction func displayPopoverView (sender : UIButton) {
        var popover = PopOverViewController(nibName: "PopOverViewController", bundle: NSBundle.mainBundle())
        popover.modalPresentationStyle = .Popover;
        popover.preferredContentSize = CGSizeMake(300, 80);
//        self.presentViewController(popover, animated: true, completion: nil);
        
        let popoverMenuViewController = popover.popoverPresentationController
        popoverMenuViewController?.permittedArrowDirections = .Up
        popoverMenuViewController?.delegate = self
        popoverMenuViewController?.sourceView = sender
        popoverMenuViewController?.sourceRect = CGRect(x: 30, y: 20,width: 1,height: 1)
        presentViewController(popover,animated: true,completion: nil)
    }
    
    
    /**  Present a ViewController as a popover view from storyboard **/
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "popoverSegue" {
            let popoverViewController = segue.destinationViewController as! UIViewController
            popoverViewController.modalPresentationStyle = UIModalPresentationStyle.Popover
            popoverViewController.popoverPresentationController!.delegate = self
        }
    }
    
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }
    
    
    

}

