//
//  RendaMensalView.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/7/22.
//

import UIKit

class RendaMensalView: UIView {
    
    lazy var textFieldRendaone:UITextField = {
       let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.autocorrectionType = .no
        text.backgroundColor = .white
        text.borderStyle = .roundedRect
        text.placeholder = "Digite a primeira renda."
        text.textColor = .black
        return text
    }()
    
    lazy var textFieldRendatwo:UITextField = {
       let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.autocorrectionType = .no
        text.backgroundColor = .white
        text.borderStyle = .roundedRect
        text.placeholder = "Digite a primeira renda."
        text.textColor = .black
        return text
    }()
    
    lazy var textFieldRendathree:UITextField = {
       let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.autocorrectionType = .no
        text.backgroundColor = .white
        text.borderStyle = .roundedRect
        text.placeholder = "Digite a primeira renda."
        text.textColor = .black
        return text
    }()
    
    lazy var textFieldRendaforh
        :UITextField = {
       let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.autocorrectionType = .no
        text.backgroundColor = .white
        text.borderStyle = .roundedRect
        text.placeholder = "Digite a primeira renda."
        text.textColor = .black
        return text
    }()
    
    
    lazy var buttonHome: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Aperte aqui", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(.white, for: .normal)
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.borderWidth = 4
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(self.tappedButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedButton(sender: UIButton){
        print("deu certo o seu botão\(RendaMensalView())")
    }
    
    lazy var title: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.configBackGround()
        self.setConstraints()
    }
 
     func configSuperView(){
        addSubview(buttonHome)
    }
    
     func configBackGround(){
        self.backgroundColor = UIColor(red: 50/255, green: 120/255, blue: 104/255, alpha: 2.0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
            self.buttonHome.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.buttonHome.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.buttonHome.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.buttonHome.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
        ])
    }
}
