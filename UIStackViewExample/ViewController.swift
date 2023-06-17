//
//  ViewController.swift
//  UIStackViewExample
//
//  Created by leoncio on 6/16/23.
//

import UIKit

class ViewController: UIViewController {

    private let titleView: UILabel = {
        let tv = UILabel()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.text = "How would you rate this tutorial?"
        tv.textColor = .black
        tv.font = UIFont.systemFont(ofSize: 40)
        tv.numberOfLines = 2
        tv.textAlignment = .center
                
        return tv
    }()
    
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 20
        return stack
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        setupStackView()
        addButtonsToStackView()
    }
    
    func setupLabel() {
        view.addSubview(titleView)
        
        NSLayoutConstraint.activate([
            
            titleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            titleView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            titleView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
            
        ])
    }
    
    func setupStackView() {
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        ])
    }
    
    func addButtonsToStackView() {
        let numberButtons = 5
         
        for i in 1...numberButtons {
            let button = SurveyButton()
            button.setTitle("\(i)", for: .normal)
            stackView.addArrangedSubview(button)
        }
    }


}

#Preview {
    ViewController()
}
