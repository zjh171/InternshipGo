//
//  AppDelegate.swift
//  InternshipGo
//
//  Created by zhujinhui on 15/12/9.
//  Copyright © 2015年 kyson. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window : UIWindow?;

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow.init()
        self.window?.frame = UIScreen.mainScreen().bounds;
        let userCenter = UserCenter.sharedCenter;
        if(userCenter.currentUser() == nil){
            let thirdPartyVC = ThirdPartyLoginViewController.init();
            self.window?.rootViewController = thirdPartyVC;
        }else{
            let homeVC = HomeViewController.init();
            let homeNavc = UINavigationController.init(rootViewController: homeVC)
            self.window?.rootViewController = homeNavc;
        }
        self.window?.makeKeyAndVisible();
        return true
    }


}

