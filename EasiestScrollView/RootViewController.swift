//
//  RootViewController.swift
//  EasiestScrollView
//
//  Created by Alex Nagy on 09/06/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    let scrollView = DScrollView()
    let scrollViewContainer = DScrollViewContainer(axis: .vertical, spacing: 10)
    let scrollViewElement0 = DScrollViewElement(height: 1200, backgroundColor: .purple).withBackground(image: #imageLiteral(resourceName: "icon.png"), contentMode: .scaleAspectFill)
    let scrollViewElement1 = DScrollViewElement(height: 500, backgroundColor: .purple)//.withBackground(image: #imageLiteral(resourceName: "icon.png"), contentMode: .scaleAspectFit)
    
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        label.text = "I am a label"
        
        view.addScrollView(scrollView,
                           withSafeArea: .none,
                           hasStatusBarCover: true,
                           statusBarBackgroundColor: .white,
                           container: scrollViewContainer,
                           elements: [scrollViewElement0, scrollViewElement1])
        
        scrollViewElement1.addSubview(label)
        label.edgeTo(scrollViewElement1)
    }


}

