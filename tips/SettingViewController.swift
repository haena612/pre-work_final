//
//  SettingViewController.swift
//  tips
//
//  Created by Haena Kim on 6/24/16.
//  Copyright © 2016 Haena Kim. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    
    @IBOutlet weak var Label: UILabel!
    // Set a variable 
    
    var LabelText:String = ""
    //Set a variable for service level 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Label.text = LabelText
        // Set the display value to show the service level input from the first view
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
