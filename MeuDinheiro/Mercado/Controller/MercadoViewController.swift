import UIKit

class MercadoViewController: UIViewController {
    
    var mercadoView: MercadoView?
    var networingMercado = NetworingMercado()
    var apiServicoMercado = [ApiServicoMercado]()
    
    override func loadView() {
        self.mercadoView = MercadoView()
        self.view = self.mercadoView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mercadoView?.configTableProtocol(delegate: self, dataSource: self)
        networingMercado.delegate = self
        networingMercado.getInfoMercado()
    }
}

extension MercadoViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apiServicoMercado.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MercadoTableViewCell? = tableView.dequeueReusableCell(withIdentifier: MercadoTableViewCell.identifier, for: indexPath) as? MercadoTableViewCell
        cell?.textLabel?.text = apiServicoMercado[indexPath.row].ask
        cell?.textLabel?.text = apiServicoMercado[indexPath.row].bid
        cell?.textLabel?.text = apiServicoMercado[indexPath.row].high
        cell?.textLabel?.text = apiServicoMercado[indexPath.row].low
        cell?.textLabel?.text = apiServicoMercado[indexPath.row].varBid
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
}

extension MercadoViewController:  NetworingMercadoProtocol {
    func showinfomercado(info: [ApiServicoMercado]) {
        apiServicoMercado = info
        DispatchQueue.main.async {
            self.mercadoView?.tableView.reloadData()
        }
    }
}
