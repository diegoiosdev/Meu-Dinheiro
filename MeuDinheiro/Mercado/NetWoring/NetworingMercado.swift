import Foundation

protocol NetworingMercadoProtocol {
    func showinfomercado(info: [ApiServicoMercado])
}

struct NetworingMercado {
    
    var delegate: NetworingMercadoProtocol?
    
    func getInfoMercado() {
        
                let urlString = "https://economia.awesomeapi.com.br/json/"
                if let url = URL(string: urlString){
                    let session = URLSession(configuration: .default)
                    let task = session.dataTask(with: url) { data, response, error in
                        if error != nil {
                            print("\(String(describing: error))")
                        }
                        if let dadosSeguros = data?.analisarDados(quitarString: "") {
                            if let infoData = self.analisarJSON(info: dadosSeguros){
                                print("info dados: ", infoData)
                                
                                delegate?.showinfomercado(info: infoData)
                            }
                        }
                    }
                    task.resume()
                }
            }
    
            func analisarJSON(info: Data) -> [ApiServicoMercado]? {
                let decodificador = JSONDecoder()
                do {
                    let dadosDecodificados =  try decodificador.decode([ApiServicoMercado].self, from: info)
                    return dadosDecodificados
                } catch{
                    print("Error ao decodificar os dados:", error.localizedDescription)
                    return nil
                }
            }
        }

        extension Data {
            func analisarDados(quitarString palavra: String) -> Data? {
                let dataAsString = String(data: self, encoding: .utf8)
                let parseDataString = dataAsString?.replacingOccurrences(of: palavra, with: "")
                guard let data = parseDataString?.data(using: .utf8) else { return nil }
                return data
            }
        }
