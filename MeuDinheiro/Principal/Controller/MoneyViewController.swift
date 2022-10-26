import UIKit

struct SettingsOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let handler: (()-> Void)
}

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
