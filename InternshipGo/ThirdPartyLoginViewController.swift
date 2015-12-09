//
//  ThirdPartyLoginViewController.swift
//  InternshipGo
//
//  Created by zhujinhui on 15/12/9.
//  Copyright © 2015年 kyson. All rights reserved.
//

import UIKit

class ThirdPartyLoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonCllicked(sender: AnyObject) {
        let appDelegate : AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate;
        let window : UIWindow = appDelegate.window!;
        window.rootViewController = IGTabbarController.init();
        window.makeKeyAndVisible();
        
    }
    
    
    
}
