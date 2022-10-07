//
//  ViewController.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/2/22.
//

import UIKit

class MyMoneyView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(testHomeTab)
        setContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    lazy var testHomeTab: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .blue
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "TabBA"
         return label
    }()
    
    
    private func setContraints() {
        NSLayoutConstraint.activate([
//            self.testHomeTab.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            self.testHomeTab.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
//            self.testHomeTab.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor),
        ])
    }
    
}

