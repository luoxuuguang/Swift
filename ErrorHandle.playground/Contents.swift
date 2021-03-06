import UIKit

var str = "Hello, playground"

enum VendingMachineError: Error{
    case invalidSelection
    case insufficientFunds(coinsNeeded:Int)
    case outOfStock
}

struct Item{
    var price: Int
    var count: Int
}

class VendingMachine{
    var inventory = [
        "Candy bar": Item(price: 6, count: 8),
        "Chips": Item(price: 10, count: 9),
        "Bread": Item(price: 15, count: 5)
    ]
    var coinsDesposited = 0
    
    func vend(itemName:String) throws {
        defer {
            print("退出清理")
        }
        
        print("开始售卖")
        guard let item = inventory[itemName] else{
            throw VendingMachineError.invalidSelection
        }
        
        guard item.count>0 else {
            throw VendingMachineError.outOfStock
        }
        
        guard coinsDesposited>=item.price else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price-coinsDesposited)
        }
        
        coinsDesposited-=item.price
        
        var newItem = item
        newItem.count-=1
        inventory[itemName] = newItem
        
        print("售卖成功")
    }
}

var machine = VendingMachine()
machine.coinsDesposited = 20

do {
    try machine.vend(itemName:"Chips")
} catch VendingMachineError.invalidSelection {
    print("no such thing")
} catch VendingMachineError.insufficientFunds(coinsNeeded: let coinsNeeded){
    print("you need more coins: \(coinsNeeded)")
} catch VendingMachineError.outOfStock {
    print("out of stock")
} catch{
    print("unexpect error")
}
