//
//  AppDelegate.swift
//  SplitViewTest
//
//  Created by Nathan Mattes on 11.03.20.
//  Copyright © 2020 Nathan Mattes. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var splitViewDelegate: SplitViewDelegate?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        let rootViewController = UISplitViewController()
        rootViewController.preferredDisplayMode = .allVisible
        let splitViewDelegate = SplitViewDelegate()
        rootViewController.delegate = splitViewDelegate
        
        self.splitViewDelegate = splitViewDelegate
        
        let inputViewController = InputViewController()
        let resultsController = ResultsViewController()
        
        window.rootViewController = rootViewController
        
        let viewControllers: [UIViewController]
        if UIDevice.current.userInterfaceIdiom == .pad {
            viewControllers = [UINavigationController(rootViewController: inputViewController), resultsController]
        } else {
            viewControllers = [UINavigationController(rootViewController: inputViewController)]
        }
        
        rootViewController.viewControllers = viewControllers
        
        window.makeKeyAndVisible()
        
        self.window = window
        
        return true
    }
}

