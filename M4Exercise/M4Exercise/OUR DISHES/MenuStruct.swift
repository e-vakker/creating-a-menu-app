import Foundation

struct JSONMenu: Codable {
    let menu:[MenuItem]
}


struct MenuItem: Codable, Identifiable {
    let id = UUID()
    let name: String
    let price: String
    
    enum CodingKeys: String, CodingKey {
        case name = "title"
        case price
    }
}
