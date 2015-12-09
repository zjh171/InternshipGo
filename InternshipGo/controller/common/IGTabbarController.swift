//
//  IGTabbarController.swift
//  InternshipGo
//
//  Created by zhujinhui on 15/12/10.
//  Copyright © 2015年 kyson. All rights reserved.
//

import UIKit

class IGTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let homeVC = HomeViewController.init()
        let chatVC = ChatViewController.init()
        let aboutVC = AboutViewController.init()
        
        let homeNaVC = IGNavigationController.init(rootViewController: homeVC);
        let chatNaVC = IGNavigationController.init(rootViewController: chatVC);
        let aboutNaVC = IGNavigationController.init(rootViewController: aboutVC);
        
        self.viewControllers = [homeNaVC,chatNaVC,aboutNaVC]
        
        homeVC.tabBarItem.title = "首页";
        chatVC.tabBarItem.title = "首页";
        aboutVC.tabBarItem.title = "首页";

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
