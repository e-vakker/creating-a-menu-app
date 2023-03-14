import Foundation

struct JSONMenu: Codable {
    let menu:[MenuItem]
    
    enum CodingKeys: String, CodingKey {
        case menu = "menu"
    }
}


struct MenuItem: Codable, Identifiable {
    var id = UUID()
    let name: String
    let price: String
    
    enum CodingKeys: String, CodingKey {
        case name = "title"
        case price = "price"
    }
}
