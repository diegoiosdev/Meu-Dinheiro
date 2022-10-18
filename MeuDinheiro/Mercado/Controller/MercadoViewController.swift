import UIKit

class MercadoViewController: UIViewController {
    
    var mercadoView: MercadoView?
    var networingMercado = NetworingMercado()
    var apiServicoMercado: [ApiServicoMercado] = []
    
    override func loadView() {
        self.mercadoView = MercadoView()
        self.view = self.mercadoView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networingMercado.delegate = self
        networingMercado.getInfoMercado()
    }
}

extension MercadoViewController:  NetworingMercadoProtocol {
    func showinfomercado() {
    }
}
