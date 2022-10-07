//
//  MoneyViewFavoreteViewController.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/6/22.
//MoneyViewFavoreteViewController.swift

import UIKit

class MoneyViewFavorete: UIViewController  {

    var moneyFavoreteView: MoneyFavoreteView?
    
    override func loadView() {
        self.moneyFavoreteView = MoneyFavoreteView()
        self.view = self.moneyFavoreteView
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
//            moneyFavoreteView?.delegate = self
            title = "Favoritos"
        }
    }

