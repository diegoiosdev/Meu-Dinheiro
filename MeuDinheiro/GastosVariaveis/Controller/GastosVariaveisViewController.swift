//
//  GastosVariaveisViewController.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/7/22.
//

import UIKit

class MoneyViewGastosVariaveis: UIViewController {

    var gastosVariaveisView: GastosVariaveisView?
    
    override func loadView() {
        self.gastosVariaveisView = GastosVariaveisView()
        self.view = self.gastosVariaveisView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Gastos Variáveis"
    }
    

}
