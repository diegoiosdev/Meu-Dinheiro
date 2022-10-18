import UIKit

class MoneyViewGastosVariaveis: UIViewController {

    var gastosVariaveisView: GastosVariaveisView?
    
    override func loadView() {
        self.gastosVariaveisView = GastosVariaveisView()
        self.view = self.gastosVariaveisView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}
