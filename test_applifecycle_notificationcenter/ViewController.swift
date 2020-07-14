//
//  ViewController.swift
//  test_applifecycle_notificationcenter
//
//  Created by Victor on 2020-07-14.
//  Copyright © 2020 devrazor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @objc func didEnterBackground(notification:NSNotification) {
        
        print("ViewController " + #function)
    
    }
    
    @objc func willEnterForeground(notification:NSNotification) {
        
        print("ViewController " + #function)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if #available(iOS 13.0, *) {
            NotificationCenter.default.addObserver(self, selector: #selector(didEnterBackground), name: UIScene.didEnterBackgroundNotification, object: nil)
        } else {
            NotificationCenter.default.addObserver(self, selector: #selector(didEnterBackground), name: UIApplication.didEnterBackgroundNotification, object: nil)
        }
        
        if #available(iOS 13.0, *) {
            NotificationCenter.default.addObserver(self, selector: #selector(willEnterForeground), name: UIScene.willEnterForegroundNotification, object: nil)
        } else {
            NotificationCenter.default.addObserver(self, selector: #selector(willEnterForeground), name: UIApplication.willEnterForegroundNotification, object: nil)
        }
        
        
    }


}

