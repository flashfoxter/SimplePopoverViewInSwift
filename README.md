# SimplePopoverViewInSwift
This very simple example of Popover View creation, using UIViewController in Swift.

Simple to integrate 

    /**  Present a ViewController as a popover view from Xib **/
    

        var popover = PopOverViewController(nibName: "PopOverViewController", bundle: NSBundle.mainBundle())
        popover.modalPresentationStyle = .Popover;
        popover.preferredContentSize = CGSizeMake(300, 80);
        let popoverMenuViewController = popover.popoverPresentationController
        popoverMenuViewController?.permittedArrowDirections = .Up
        popoverMenuViewController?.delegate = self
        popoverMenuViewController?.sourceView = sender
        popoverMenuViewController?.sourceRect = CGRect(x: 30, y: 20,width: 1,height: 1)
        presentViewController(popover,animated: true,completion: nil)


or /**  Present a ViewController as a popover view from storyboard **/

            if segue.identifier == "popoverSegue" {
            let popoverViewController = segue.destinationViewController as! UIViewController
            popoverViewController.modalPresentationStyle = UIModalPresentationStyle.Popover
            popoverViewController.popoverPresentationController!.delegate = self
        }
