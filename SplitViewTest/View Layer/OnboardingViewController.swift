//
//  OnboardingViewController.swift
//  SplitViewTest
//
//  Created by Nathan Mattes on 11.03.20.
//  Copyright © 2020 Nathan Mattes. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.view.backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
