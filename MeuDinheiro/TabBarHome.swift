//
//   TabBarHomeController.swift
//  MeuDinheiro
//
//  Created by Diego Fernando on 10/5/22.
//

import UIKit

class TabBarHome: UITabBarController {

//    var moneyFavoreteView: MoneyFavoreteView?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
//        moneyFavoreteView?.delegate = self
    }
    
  
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    private func setupTabBarController(){
//        self.setViewControllers([MoneyViewController(), MoneyViewFavorete(),MoneyViewGastosFixo(),MoneyViewGastosVariaveis(), MoneyViewRendaMensal()], animated: false)
        
        let moneyViewController = UINavigationController(rootViewController: MoneyViewController())
        let moneyViewFavorete = UINavigationController(rootViewController: MoneyViewFavorete())
        let moneyViewGastosFixo = UINavigationController(rootViewController: MoneyViewGastosFixo())
        let moneyViewGastosVariaveis = UINavigationController(rootViewController: MoneyViewGastosVariaveis())
        let moneyViewRendaMensal = UINavigationController(rootViewController: MoneyViewRendaMensal())
    
        self.setViewControllers([moneyViewController, moneyViewFavorete,moneyViewGastosFixo,moneyViewGastosVariaveis, moneyViewRendaMensal], animated: false)
        self.tabBar.backgroundColor = UIColor(red: 50/255, green: 120/255, blue: 104/255, alpha: 2.0)
        self.tabBar.isTranslucent = true
        
        guard let items = tabBar.items else {return}
        items[0].title = "Meu Dinheiro"
        items[0].image = UIImage(systemName: "star")
        items[1].title = "Favoritos"
        items[1].image = UIImage(systemName: "gear")
        items[2].title = "Gastos Fixos"
        items[2].image = UIImage(systemName: "person")
        items[3].title = "Gastos variaveis"
        items[3].image = UIImage(systemName: "trash")
        items[4].title = "Gastos variaveis"
        items[4].image = UIImage(systemName: "repeat")
       }
   }
    
