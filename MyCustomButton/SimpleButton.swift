//
//  SimpleButton.swift
//  MyCustomButton
//
//  Created by Kadjo Anoh on 11/8/21.
//

import UIKit
struct buttonTextModel {
    let buttonText: String
}

class SimpleButton: UIButton {
    
    //MARK: Create lable
    var buttonText: UILabel = {
        let lb = UILabel()
        lb.numberOfLines = 0
        lb.textAlignment = .center
        lb.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        lb.textColor = .white
        lb.text = "loading..."
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(buttonText)
        clipsToBounds = true //Any subview will clip to the bound of the container
        layer.cornerRadius = 8
        backgroundColor = .systemGreen
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Configure the button with different model
    func configure( with viewModel: buttonTextModel) {
        buttonText.text = viewModel.buttonText
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        buttonText.center(inView: self, yConstant: 0)
    }
}
