//
//  SplitViewDelegate.swift
//  SplitViewTest
//
//  Created by Nathan Mattes on 11.03.20.
//  Copyright © 2020 Nathan Mattes. All rights reserved.
//

import UIKit

/// This handles basically, that all screens on iPhone are presented modally instead of being shown on the detail-area.
class SplitViewDelegate: UISplitViewControllerDelegate {
    func splitViewController(_ splitViewController: UISplitViewController, showDetail vc: UIViewController, sender: Any?) -> Bool {
        let device = UIDevice.current.userInterfaceIdiom
        
        if device == .pad {
            return false
        } else {
            splitViewController.present(vc, animated: true, completion: nil)
            return true
        }
    }
}
