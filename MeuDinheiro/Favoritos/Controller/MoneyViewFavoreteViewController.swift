import UIKit

class MoneyViewFavorete: UIViewController  {

    var moneyFavoreteView: MoneyFavoreteView?
    
    override func loadView() {
        self.moneyFavoreteView = MoneyFavoreteView()
        self.view = self.moneyFavoreteView
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
        }
    }
