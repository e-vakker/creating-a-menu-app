import Foundation
import CoreData


extension Dish {

    static func createDishesFrom(menuItems:[MenuItem],
                                 _ context:NSManagedObjectContext) {
        for menuItem in menuItems {
            guard let _ = exists(name: menuItem.name, context) else { continue }
            let dish = Dish(context: context)
            dish.name = menuItem.name
            if let price = Float(menuItem.price) {
                dish.price = price
            }
        }
    }
    
}
