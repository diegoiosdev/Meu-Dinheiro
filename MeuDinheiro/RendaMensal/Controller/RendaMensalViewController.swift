//
//  RendaMensalViewController.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/7/22.
//

import UIKit

class MercadoViewController: UIViewController {
    var mercadoView: MercadoView?

    override func loadView() {
        self.mercadoView = MercadoView()
        self.view = self.mercadoView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
