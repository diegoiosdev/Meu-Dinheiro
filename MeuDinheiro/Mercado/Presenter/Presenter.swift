//
//  Presenter.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/25/22.

import UIKit

enum FetchError: Error {
    case failed
}

protocol AnyPresenter {
    
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }
    
    func interactorDidFecthUsers(with result: Result<[User], Error>)
}

class UserPresenter: AnyPresenter {
    var router: AnyRouter?
    
    
    var interactor: AnyInteractor? {
        didSet {
            interactor?.getUsers()
        }
    }
    
    var view: AnyView?
    
    func interactorDidFecthUsers(with result: Result<[User], Error>) {
        switch result {
        case .success(let users):
            view?.update(with: users)
        case .failure:
            view?.update(with: "Erro em fazer a chamada api")
        }
    }
}
