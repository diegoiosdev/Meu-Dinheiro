//
//  CoinCountingRepository.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/27/22.
//

import UIKit

protocol  listaMoedasProtocol {
    func mostrarMoedas(listaMoedas: [labels])
}

class CoinCountingRepository {
    var delegate: listaMoedasProtocol?
    
    func getUsers() {
        guard let url = URL(string: "https://economia.awesomeapi.com.br") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error  in
            guard let data = data, error == nil else {
                print("\((String(describing: error)))")
                return
              }
            do {
                
                let moedas = try? JSONDecoder().decode([labels].self, from: data)
                self.delegate?.mostrarMoedas(listaMoedas: moedas ??  [])
            }
            catch {
                print("\((String(describing: error)))")
                }
            }
        
          task.resume()
        }
}
