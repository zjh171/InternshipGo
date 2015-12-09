//
//  UserCenter.swift
//  InternshipGo
//
//  Created by zhujinhui on 15/12/9.
//  Copyright © 2015年 kyson. All rights reserved.
//

import UIKit

private let sharedInstance = UserCenter()

class UserCenter: NSObject {
    
    class var sharedCenter : UserCenter {
        return sharedInstance
    }
    
    func currentUser()->User?{
        return nil;
//        let user = User.init();
//        return user;
    }
}
