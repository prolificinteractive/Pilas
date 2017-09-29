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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        observeKeyboardAppearance()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    
    func observeKeyboardAppearance() {
        NotificationCenter.default.addObserver(stackViewScrollView,
                                               selector: #selector(stackViewScrollView.onKeyboardShow(notification:)),
                                               name: NSNotification.Name.UIKeyboardWillShow,
                                               object: nil)
        
        NotificationCenter.default.addObserver(stackViewScrollView,
                                               selector: #selector(stackViewScrollView.onKeyboardDismiss(notification:)),
                                               name: NSNotification.Name.UIKeyboardWillHide,
                                               object: nil)
    }
    
    private func setupStackView() {
        insertColorViews()
        
        stackViewScrollView.insertDividerView(height: 10, backgroundColor: UIColor.black)
        stackViewScrollView.insertView(view: sampleTextFieldView())
        stackViewScrollView.insertDividerView(height: 10, backgroundColor: UIColor.black)
        stackViewScrollView.insertView(view: sampleTextFieldView())
        stackViewScrollView.insertDividerView(height: 10, backgroundColor: UIColor.black)
        
        insertColorViews()
    }
    
    private func insertColorViews() {
        stackViewScrollView.insertView(view: sampleBackgroundView(backgroundColor: UIColor.blue), height: 50)
        stackViewScrollView.insertView(view: sampleBackgroundView(backgroundColor: UIColor.red), height: 75)
        stackViewScrollView.insertView(view: sampleBackgroundView(backgroundColor: UIColor.green), height: 100)
        stackViewScrollView.insertView(view: sampleBackgroundView(backgroundColor: UIColor.gray), height: 125)
    }
    
    private func sampleTextFieldView() -> UIView {
        let view = UIView()
        let border: CGFloat = 20
        let textField = SampleTextField()
        textField.delegate = self

        view.addSubview(textField)
        textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: border).isActive = true;
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -border).isActive = true;
        textField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -border).isActive = true;
        textField.topAnchor.constraint(equalTo: view.topAnchor, constant: border).isActive = true;
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true;
        
        return view
    }
    
    private func sampleBackgroundView(backgroundColor: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        return view
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}

