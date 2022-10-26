//
//  Router.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/26/22.
//

import UIKit

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    
    var Entry: EntryPoint?  { get }
    
    static func start() -> AnyRouter
}


class UserRouter: AnyRouter {
    var Entry: EntryPoint?
    
    static func start() -> AnyRouter {
        
        let router = UserRouter()
        
        // Assing VIP
        var view: AnyView = TabBarHome() as! AnyView
        var presenter: AnyPresenter = UserPresenter()
        var interactor: AnyInteractor = UserInteractor()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.router = router
        
        presenter.view = view
        presenter.interactor = interactor
        
        router.Entry = view as? EntryPoint
        
        return router
    }
}
