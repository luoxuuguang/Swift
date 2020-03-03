import UIKit

var str = "Hello, playground"


protocol Shape{
    func draw() -> String
}

struct Triangle: Shape{
    var size: Int
    
    func draw() -> String {
        var result = [String]()
        for length in 1...size{
            result.append(String(repeating: "*", count: length))
        }
        return result.joined(separator: "\n")
    }
}

//let t = Triangle(size: 5)
//print(t.draw())

struct Square: Shape{
    var size: Int
    func draw() -> String {
        var result = [String]()
        for length in 0...size{
            result.append(String(repeating: "*", count: length))
        }
        return result.joined(separator: "\n")
    }
}

struct FlippedShape<T:Shape> : Shape{
    var shape: T
    func draw() -> String {
        let result = shape.draw().split(separator: "\n")
        return result.reversed().joined(separator: "\n")
    }
}

struct JoinedShape<T:Shape,U:Shape>:Shape{
    var top:T
    var bottom:U
    
    func draw() -> String {
        return top.draw()+"\n"+bottom.draw()
    }
}

func makeTapezoid()->JoinedShape<Triangle,JoinedShape<Square,FlippedShape<Triangle>>>{
    let t = Triangle(size: 3)
    let s = Square(size: 3)
    let f = FlippedShape(shape: t)
    return JoinedShape(top: t, bottom: JoinedShape(top: s, bottom: f))
}

func makeTapezoid1()->Shape{
    let t = Triangle(size: 3)
    let s = Square(size: 3)
    let f = FlippedShape(shape: t)
    return JoinedShape(top: t, bottom: JoinedShape(top: s, bottom: f))
}

func makeTapezoid2()->some Shape{
    let t = Triangle(size: 3)
    let s = Square(size: 3)
    let f = FlippedShape(shape: t)
    return JoinedShape(top: t, bottom: JoinedShape(top: s, bottom: f))
}

let tapezoid = makeTapezoid2()
print(tapezoid.draw())

protocol Container{
    associatedtype Item
    var count: Int{get}
    subscript(index:Int)->Item{get}
}

extension Array: Container{}

func makeProtocolContainer<T>(item:T) -> some Container{
    return [item]
}

