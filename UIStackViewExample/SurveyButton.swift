//
//  SurveyButton.swift
//  UIStackViewExample
//
//  Created by leoncio on 6/16/23.
//

import UIKit

class SurveyButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        setTitleColor(.white, for: .normal)
        backgroundColor = .red
        titleLabel?.font = UIFont.systemFont(ofSize: 20)
        layer.cornerRadius = 10
                                    
    }

}
