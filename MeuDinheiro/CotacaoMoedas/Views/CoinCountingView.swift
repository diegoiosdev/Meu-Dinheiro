//
//  CoinCountingView.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/27/22.


import UIKit

class CoinCountingView: UIView {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Cotação Moedas"
        return label
    }()
    
    lazy var tableView: UITableView = {
       let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.setConstraints()
        self.configBackGround()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        func configSuperView(){
           addSubview(titleLabel)
           addSubview(tableView)
       }
    
    func configBackGround(){
       self.backgroundColor = UIColor(red: 50/255, green: 120/255, blue: 104/255, alpha: 2.0)
   }
    
    public func configtableViewProtocol(delegate: UITableViewDelegate, dataSouse: UITableViewDataSource) {
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSouse
    }
   
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
            self.titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 30),
            self.titleLabel.topAnchor.constraint(equalTo:self.safeAreaLayoutGuide.topAnchor, constant: 2),
         
            self.tableView.topAnchor.constraint(equalTo: self.titleLabel.topAnchor, constant: 50),
            self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
 
}

