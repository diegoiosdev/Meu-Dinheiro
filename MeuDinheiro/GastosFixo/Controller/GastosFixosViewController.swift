//
//  GastosFixosViewController.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/7/22.
//

import UIKit

class MoneyViewGastosFixo: UIViewController {

    var gastosFixosView: GastosFixosView?
    
    override func loadView() {
        self.gastosFixosView = GastosFixosView()
        self.view = self.gastosFixosView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
