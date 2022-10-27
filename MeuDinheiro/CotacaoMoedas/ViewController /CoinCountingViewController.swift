//
//  CoinCountingViewController.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/27/22.
//

import UIKit

class CoinCountingViewController: UIViewController {

    var coinCountingView: CoinCountingView?
    
    override func loadView() {
        self.coinCountingView = CoinCountingView()
        self.view = self.coinCountingView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
