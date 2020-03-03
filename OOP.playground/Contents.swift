import UIKit

//enum CompasssPoint{
//    case south
//    case north
//    case east
//    case west
//}
//
//let direction = CompasssPoint.south
//switch direction {
//    case .south:
//        print("south")
//    case .north:
//        print("north")
//    case .east:
//        print("east")
//    case .west:
//        print("west")
//}
//
//enum ControlCharacter : String{
//    case tab = "\t"
//    case line = "\n"
//}
//
//print(ControlCharacter.tab.rawValue)
//
//enum Barcode {
//    case upc(Int,Int,Int,Int)
//    case qrCode(String)
//}
//var productCode = Barcode.upc(1, 2, 3, 4)
//print(productCode)
//productCode = Barcode.qrCode("abcd")
//switch productCode{
//    case .upc(let a, let b, let c, let d):
//        print("upc - \(a)- \(b)- \(c)- \(d)")
//    case .qrCode(let codeStr):
//        print("qrcode- \(codeStr)")
//}
//
//indirect enum ArithmeticExpression{
//    case number(Int)
//    case add(ArithmeticExpression, ArithmeticExpression)
//    case mutilply(ArithmeticExpression, ArithmeticExpression)
//}
//
//let first = ArithmeticExpression.number(5)
//let second = ArithmeticExpression.number(4)
//let addExpression = ArithmeticExpression.add(first, second)
//let third = ArithmeticExpression.number(2)
//let mutilplyExpression = ArithmeticExpression.mutilply(addExpression, third)
//print(mutilplyExpression)
//
//func eval(_ expression: ArithmeticExpression) -> Int {
//    switch expression {
//    case .number(let value):
//        return value
//    case .add(let first, let second):
//        return eval(first)+eval(second)
//    case .mutilply(let first, let second):
//        return eval(first)*eval(second)
//    }
//}
//print(eval(mutilplyExpression))
//
//struct Point{
//    var x = 0
//    var y = 0
//}
//struct Size {
//    var width = 0
//    var height = 0
//}
//struct Rect {
//    var origin: Point
//    var size: Size
//
//    var Center: Point{
//        get{
//            return Point(x: origin.x+size.width/2, y: origin.y+size.height/2)
//        }
//        set(newCenter){
//            origin.x = newCenter.x-size.width/2
//            origin.y = newCenter.y - size.height/2
//        }
//    }
//}
//
//class StepCounter {
//    var totalSteps: Int = 0{
//        willSet{
//            print("will set totalSteps to \(newValue)")
//        }
//        didSet{
//            print("did change totalSteps from \(oldValue) to \(totalSteps)")
//        }
//    }
//}
//
//var counter = StepCounter()
//counter.totalSteps = 100

struct Point{
    var x = 0
    var y = 0
    
    func printInfo()  {
        print("x is \(x) y is \(y)")
    }
    
    mutating func moveBy(x:Int,y:Int) {
//        self.x+=x
//        self.y+=y
        self = Point(x: self.x+x, y: self.y+y)
    }
    
    static func printTypeInfo(){
        print("A point")
    }
}

var p = Point(x: 2, y: 2)
p.moveBy(x: 1, y: 4)
p.printInfo()
Point.printTypeInfo()
