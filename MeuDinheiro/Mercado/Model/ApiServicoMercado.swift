import Foundation

struct ApiServicoMercado: Decodable {
    
    let info:String
    let title:String
    let labels: String
    let bid:String
    let ask: String
    let varBid:String
    let pctChange:String
    let high:String
    let low:String
}
