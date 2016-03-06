//
//  ViewController.swift
//  segues
//
//  Created by Vyacheslav Horbach on 06/03/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadBlueView(sender: AnyObject) {
        // use SENDER to pass data
        let str = "Hey, we just came from the blue VC!"
        performSegueWithIdentifier("goToBlue", sender: str)
    }
    @IBAction func goToOrange(sender: AnyObject) {
        performSegueWithIdentifier("goToOrange", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //this is where you do the work right before the vew loads
        //keep in mind - the next viewController has already been initialized
        if segue.identifier == "goToBlue" {
            if let blueVC = segue.destinationViewController as? GreenViewController {
                if let theString = sender as? String {
                    blueVC.transferTxt = theString
                }
            }
        }
    }
}

