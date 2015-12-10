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
        let homeVC = HomeViewController.init(nibName : "HomeViewController", bundle: nil);
        let chatVC = ChatViewController.init(nibName : "ChatViewController", bundle: nil);
        let aboutVC = AboutViewController.init(nibName : "AboutViewController", bundle: nil);

        let homeTabbarItem = UITabBarItem.init(title: "首页", image: UIImage.init(named: "icon_wxdl"), selectedImage: UIImage.init(named: "icon_wxdl"));
        let chatTabbarItem = UITabBarItem.init(title: "微聊", image: UIImage.init(named: "icon_wxdl"), selectedImage: UIImage.init(named: "icon_wxdl"));
        let aboutTabbarItem = UITabBarItem.init(title: "关于", image: UIImage.init(named: "icon_wxdl"), selectedImage: UIImage.init(named: "icon_wxdl"));
        homeVC.tabBarItem   = homeTabbarItem;
        chatVC.tabBarItem   = chatTabbarItem;
        aboutVC.tabBarItem  = aboutTabbarItem;
        
        let homeNaVC = IGNavigationController.init(rootViewController: homeVC);
        let chatNaVC = IGNavigationController.init(rootViewController: chatVC);
        let aboutNaVC = IGNavigationController.init(rootViewController: aboutVC);
        
        self.viewControllers = [homeNaVC,chatNaVC,aboutNaVC]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
