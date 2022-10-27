//
//  interactor.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/25/22.
//

import UIKit

protocol  AnyInteractor {
    
    var presenter: AnyPresenter? { get set }
    func getUsers()
}

class UserInteractor: AnyInteractor {
    
    var presenter: AnyPresenter?
    
    func getUsers() {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        let task = URLSession.shared.dataTask(with: url) {[ weak self ] data, _, error  in
            guard let data = data, error == nil else {
        
                self?.presenter?.interactorDidFecthUsers(with:.failure(FetchError.failed))
                return
              }
            
            do {
                let entities = try JSONDecoder().decode([User].self, from: data)
                self?.presenter?.interactorDidFecthUsers(with: .success(entities))
            }
            catch {
                self?.presenter?.interactorDidFecthUsers(with:.failure(error))
                }
            }
        
          task.resume()
        }
}
