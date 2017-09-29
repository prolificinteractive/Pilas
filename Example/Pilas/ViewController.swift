//
//  ViewController.swift
//  Pilas
//
//  Created by jgsamudio on 09/29/2017.
//  Copyright (c) 2017 jgsamudio. All rights reserved.
//

import UIKit
import Pilas

class ViewController: UIViewController {

    @IBOutlet private weak var stackViewScrollView: PilasScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStackView()
    }
    
    private func setupStackView() {
        insertColorViews()
        stackViewScrollView.insertDividerView(height: 150)
        insertColorViews()
    }
    
    private func insertColorViews() {
        let height: CGFloat = 100
        stackViewScrollView.insertView(view: sampleBackgroundView(backgroundColor: UIColor.blue), height: height)
        stackViewScrollView.insertView(view: sampleBackgroundView(backgroundColor: UIColor.red), height: height)
        stackViewScrollView.insertView(view: sampleBackgroundView(backgroundColor: UIColor.cyan), height: height)
        stackViewScrollView.insertView(view: sampleBackgroundView(backgroundColor: UIColor.green), height: height)
    }
    
    private func sampleBackgroundView(backgroundColor: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        return view
    }
}

