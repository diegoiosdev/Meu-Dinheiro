import UIKit

class MoedasViewController: UIViewController {

    lazy var tableView: UITableView = {
       let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
//        table.register(MercadoTableViewCell.self, forCellReuseIdentifier: MercadoTableViewCell.identifier)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}
