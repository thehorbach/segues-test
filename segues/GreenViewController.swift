//
//  GreenViewController.swift
//  segues
//
//  Created by Vyacheslav Horbach on 06/03/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    
    
    @IBOutlet weak var mainLbl: UILabel!
    var transferTxt: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        mainLbl.text = transferTxt
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
