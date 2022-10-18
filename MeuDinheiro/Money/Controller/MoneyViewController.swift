import UIKit

class MoneyViewController: UIViewController {
    
    var moneyView: MoneyView?
    
    override func loadView() {
        self.moneyView = MoneyView()
        self.view = self.moneyView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
