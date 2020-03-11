//
//  HistoryViewController.swift
//  SplitViewTest
//
//  Created by Nathan Mattes on 11.03.20.
//  Copyright © 2020 Nathan Mattes. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    let button: UIButton
    
    init() {
        
        self.button = UIButton(frame: .zero)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        self.button.setTitle("Results", for: .normal)
        
        super.init(nibName: nil, bundle: nil)
        self.view.addSubview(self.button)
        self.button.addTarget(self, action: #selector(showResults(_:)), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            self.button.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            self.button.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor)
        ])

        self.view.backgroundColor = .yellow
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Input", style: .plain, target: self, action: #selector(showInput(_:)))

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Actions
    
    @objc
    private func showInput(_ sender: Any) {
        let inputViewController = InputViewController()
        self.navigationController?.viewControllers = [inputViewController]
    }

    @objc
    private func showResults(_ sender: Any) {
        let resultsViewController = ResultsViewController()
        resultsViewController.view.backgroundColor = .purple
        
        self.showDetailViewController(resultsViewController, sender: nil)
    }

}
