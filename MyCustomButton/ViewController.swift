//
//  ViewController.swift
//  MyCustomButton
//
//  Created by Kadjo Anoh on 11/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Create Button using the custon button
    lazy var customButton: SimpleButton = {
        let cb = SimpleButton()
        cb.setDimensions(width: view.frame.width * 0.8, height: 45)
        cb.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return cb
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(customButton)
        customButton.center(inView: view, yConstant: 0)
        customButton.configure(with: buttonTextModel(buttonText: "Touch me!"))
    }


    //MARK: Handle
    @objc func buttonTapped() {
        print("Hello There!")
    }
}

