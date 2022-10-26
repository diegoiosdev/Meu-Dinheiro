import UIKit

//struct User: Decodable {
//
//    let bid:String
//}

struct User: Codable {
    
    let name: String
}


//{
//    "info": {
//        "title": "API de Cotações",
//        "api_docs": "https://docs.awesomeapi.com.br/api-de-moedas",
//        "contact": "contato@awesomeapi.com.br"
//    },
//    "labels": {
//        "bid": "Compra",
//        "ask": "Venda",
//        "varBid": "Variação",
//        "pctChange": "Porcentagem de Variação",
//        "high": "Máximo",
//        "low": "Mínimo"
//    }
//}
