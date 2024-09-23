//
//  ViewController.swift
//  IOStestFedotov
//
//  Created by Nikita Fedotov on 23.09.2024.
//

import UIKit

final class AppViewController: UIViewController {
    
    private let viewModel: AppViewModel
    
    private let bundleIDLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init(viewModel: AppViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        updateUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(bundleIDLabel)
        
        NSLayoutConstraint.activate([
            bundleIDLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bundleIDLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func updateUI() {
        bundleIDLabel.text = "\(viewModel.appInfo.bundleID)"
    }
}

