//
//  RendaMensalViewController.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/7/22.
//

import UIKit

class MoneyViewRendaMensal: UIViewController {
    var rendaMensalView: RendaMensalView?

    override func loadView() {
        self.rendaMensalView = RendaMensalView()
        self.view = self.rendaMensalView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Renda Mensal"
    }

}
