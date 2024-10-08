//
//  POCSDKViewController.swift
//
//
//  Created by Manuel Loigeret on 2024-10-02.
//

import POCColor
import SwiftHEXColors
import UIKit

class POCSDKViewController: UIViewController {

    private let messageLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, World!"
        label.textAlignment = .center
        return label
    }()

    private let closeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Close", for: .normal)
        button.addTarget(self, action: #selector(closeTapped), for: .touchUpInside)
        button.setTitleColor(UIColor(hexString: "#00AAFF"), for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = POCColor.getSpecialColor()
        setupUI()
    }

    private func setupUI() {
        view.addSubview(messageLabel)
        view.addSubview(closeButton)

        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        closeButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            messageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            messageLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            closeButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 20),
        ])
    }

    @objc private func closeTapped() {
        dismiss(animated: true, completion: nil)
    }
}
