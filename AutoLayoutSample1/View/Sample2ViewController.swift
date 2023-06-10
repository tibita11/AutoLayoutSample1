//
//  Sample2ViewController.swift
//  AutoLayoutSample1
//
//  Created by 鈴木楓香 on 2023/06/10.
//

import UIKit

/// NSLayoutAnchorを学ぶためのクラス
class Sample2ViewController: UIViewController {
    
    private var greenView = UIView()
    private var baseStackView = UIStackView()
    private var buttonStackView = UIStackView()
    private var blueButton = UIButton()
    private var redButton = UIButton()
    
    
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    
    // MARK: - Action
    
    private func setUp() {
        self.view.backgroundColor = UIColor.systemBackground
        setUpBaseStackView()
        setUpButtonStackView()
        setUpBlueButton()
        setUpRedButton()
        setUpGreenView()
    }
    
    private func setUpBaseStackView() {
        baseStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(baseStackView)
        
        baseStackView.addArrangedSubview(greenView)
        baseStackView.addArrangedSubview(buttonStackView)
        baseStackView.spacing = 30
        baseStackView.distribution = .fill
        baseStackView.alignment = .fill
        baseStackView.axis = .vertical
        
        baseStackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        baseStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        baseStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        baseStackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
    }
    
    private func setUpButtonStackView() {
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.addArrangedSubview(blueButton)
        buttonStackView.addArrangedSubview(redButton)
        buttonStackView.spacing = 10
        buttonStackView.distribution = .fillEqually
        buttonStackView.alignment = .fill
        
        buttonStackView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        buttonStackView.leadingAnchor.constraint(equalTo: baseStackView.leadingAnchor).isActive = true
        buttonStackView.trailingAnchor.constraint(equalTo: baseStackView.trailingAnchor).isActive = true
        buttonStackView.bottomAnchor.constraint(equalTo: baseStackView.bottomAnchor).isActive = true
    }
    
    private func setUpBlueButton() {
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.backgroundColor = UIColor.blue
        blueButton.tintColor = UIColor.white
        blueButton.setTitle("BlueButton", for: .normal)
    }
    
    private func setUpRedButton() {
        redButton.translatesAutoresizingMaskIntoConstraints = false
        redButton.backgroundColor = UIColor.red
        redButton.tintColor = UIColor.white
        redButton.setTitle("RedButton", for: .normal)
    }
    
    private func setUpGreenView() {
        greenView.translatesAutoresizingMaskIntoConstraints = false
        greenView.backgroundColor = UIColor.green
        
        greenView.topAnchor.constraint(equalTo: baseStackView.topAnchor).isActive = true
        greenView.leadingAnchor.constraint(equalTo: baseStackView.leadingAnchor).isActive = true
        greenView.trailingAnchor.constraint(equalTo: baseStackView.trailingAnchor).isActive = true
    }
    
}
