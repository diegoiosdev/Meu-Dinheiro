import Foundation

protocol NetworingMercadoProtocol {
    func showinfomercado()
}

struct NetworingMercado {
    
    var delegate: NetworingMercadoProtocol?
    
    func getInfoMercado() {
        var request = URLRequest(url: URL(string: "https://economia.awesomeapi.com.br/json/")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
          print(String(data: data, encoding: .utf8)!)
        }
        task.resume()
    }
}
