//
//  CoinCountingPresenter.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/27/22.
//

import Foundation


class CoinCountingPresenter  {
  
    
    
    var interactor: AnyInteractor? {
        didSet {
            interactor?.getUsers()
        }
    }
    
    
    func interactorDidFecthUsers(with result: Result<[labels], Error>) {
//        switch result {
//        case .success(let users):
//
//        case .failure:
//
//        }
    }
}
