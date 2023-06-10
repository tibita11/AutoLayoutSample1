//
//  Sample1ViewController.swift
//  AutoLayoutSample1
//
//  Created by 鈴木楓香 on 2023/06/10.
//

import UIKit

/// NSLayoutConstraintを学ぶためのクラス
class Sample1ViewController: UIViewController {
    
    private var redView: UIView = UIView()
    private var blueButon: UIButton = UIButton()
    private var greenView: UIView = UIView()
    
    
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    
    // MARK: - Action
    
    private func setUp() {
        self.view.backgroundColor = UIColor.systemBackground
        setUpRedView()
        setUpBlueButton()
        setUpGreenView()
    }
    
    private func setUpRedView() {
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = UIColor.red
        self.view.addSubview(redView)
        
        self.view.addConstraints([
            // self.viewの上から0pxの位置に配置
            NSLayoutConstraint(item: redView,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: self.view,
                               attribute: .top,
                               multiplier: 1,
                               constant: 0
                              ),
            // self.viewの横幅いっぱいにする
            NSLayoutConstraint(item: redView,
                               attribute: .width,
                               relatedBy: .equal,
                               toItem: self.view,
                               attribute: .width,
                               multiplier: 1,
                               constant: 0
                              ),
            // self.viewのレイアウトに関わらず高さは64px
            NSLayoutConstraint(item: redView,
                               attribute: .height,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .height,
                               multiplier: 1,
                               constant: 64
                              )
        ])

    }
    
    private func setUpBlueButton() {
        blueButon.translatesAutoresizingMaskIntoConstraints = false
        blueButon.backgroundColor = UIColor.blue
        redView.addSubview(blueButon)
        
        redView.addConstraints([
            // 上から10px
            NSLayoutConstraint(item: blueButon,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: redView,
                               attribute: .top,
                               multiplier: 1,
                               constant: 10
                              ),
            // 左から10px
            NSLayoutConstraint(item: blueButon,
                               attribute: .leading,
                               relatedBy: .equal,
                               toItem: redView,
                               attribute: .leading,
                               multiplier: 1,
                               constant: 10
                              ),
            // 幅44px
            NSLayoutConstraint(item: blueButon,
                               attribute: .width,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .width,
                               multiplier: 1.0,
                               constant: 44
                              ),
            // 高さ44px
            NSLayoutConstraint(item: blueButon,
                               attribute: .height,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .height,
                               multiplier: 1.0,
                               constant: 44)
        
        ])
    }
    
    private func setUpGreenView() {
        greenView.translatesAutoresizingMaskIntoConstraints = false
        greenView.backgroundColor = UIColor.green
        redView.addSubview(greenView)
        
        redView.addConstraints([
            // CenterXが同じ
            NSLayoutConstraint(item: greenView,
                               attribute: .centerX,
                               relatedBy: .equal,
                               toItem: redView,
                               attribute: .centerX,
                               multiplier: 1,
                               constant: 0
                              ),
            // CenterYが同じ
            NSLayoutConstraint(item: greenView,
                               attribute: .centerY,
                               relatedBy: .equal,
                               toItem: redView,
                               attribute: .centerY,
                               multiplier: 1,
                               constant: 0
                              ),
            // redView.width:320のときgreenView:100の比率
            NSLayoutConstraint(item: greenView,
                               attribute: .width,
                               relatedBy: .equal,
                               toItem: redView,
                               attribute: .width,
                               multiplier: 100.0 / 320.0,
                               constant: 0
                              ),
            // 高さ44px
            NSLayoutConstraint(item: greenView,
                               attribute: .height,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .height,
                               multiplier: 1,
                               constant: 44
                              )
        ])
    }
}
