//
//  InputViewController.swift
//  SplitViewTest
//
//  Created by Nathan Mattes on 11.03.20.
//  Copyright © 2020 Nathan Mattes. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
    
    let button: UIButton
    
    init() {
        
        self.button = UIButton(frame: .zero)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        self.button.setTitle("Results", for: .normal)
        
        super.init(nibName: nil, bundle: nil)
        self.view.backgroundColor = .red
        
        self.view.addSubview(self.button)
        self.button.addTarget(self, action: #selector(showResults(_:)), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            self.button.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            self.button.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor)
        ])

        self.navigationItem.leftBarButtonItem  = UIBarButtonItem(title: "Onboarding", style: .plain, target: self, action: #selector(showOnboarding(_:)))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "History", style: .plain, target: self, action: #selector(showHistory(_:)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Actions
    
    @objc
    private func showOnboarding(_ sender: Any) {
        
        let onboardingViewController = OnboardingViewController()
        self.present(onboardingViewController, animated: true, completion: nil)
    }
    
    @objc
    private func showHistory(_ sender: Any) {
        
        let historyViewController = HistoryViewController()
        self.navigationController?.viewControllers = [historyViewController]
    }
    
    @objc
    private func showResults(_ sender: Any) {
        let resultsViewController = ResultsViewController()
        self.showDetailViewController(resultsViewController, sender: nil)
    }

}
