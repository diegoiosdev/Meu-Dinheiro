import UIKit

class TabBarHome: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    private func setupTabBarController(){
        self.setViewControllers([MoneyViewController(), MoneyViewFavorete(),MoneyViewGastosFixo(),MoneyViewGastosVariaveis(), MercadoViewController()], animated: false)
        self.tabBar.backgroundColor = UIColor(red: 50/255, green: 120/255, blue: 104/255, alpha: 2.0)
        self.tabBar.isTranslucent = true
        guard let items = tabBar.items else {return}
        items[0].title = "Meu Dinheiro"
        items[0].image = UIImage(systemName: "house")
        items[1].title = "Favoritos"
        items[1].image = UIImage(systemName: "note")
        items[2].title = "Gastos Fixos"
        items[2].image = UIImage(systemName: "hourglass")
        items[3].title = "Gastos Variáveis"
        items[3].image = UIImage(systemName: "book")
        items[4].title = "Mercado"
        items[4].image = UIImage(systemName: "banknote")
       }
   }
    
