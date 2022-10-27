//
//  CoinCountingViewController.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/27/22.
//

import UIKit

class CoinCountingViewController: UIViewController  {
    
    var coinCountingView: CoinCountingView?
    var coinCountingRepository = CoinCountingRepository()
    var moedas: [labels] = []
    
    
    override func loadView() {
        self.coinCountingView = CoinCountingView()
        self.view = self.coinCountingView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        coinCountingView?.configtableViewProtocol(delegate: self, dataSouse: self)
        coinCountingRepository.delegate = self
        coinCountingRepository.getUsers()
    }
}

extension CoinCountingViewController: listaMoedasProtocol {
    func mostrarMoedas(listaMoedas: [labels]) {
        moedas = listaMoedas
        DispatchQueue.main.async {
            self.coinCountingView?.tableView.reloadData()
        }
    }
}

extension CoinCountingViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "UITableViewCell")
        cell.textLabel?.text = "Teste conta"
        return cell
    }
}
