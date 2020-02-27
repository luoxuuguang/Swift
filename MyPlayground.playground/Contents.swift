import UIKit

//var str = "Hello, playground"
//
//func addTwoNum(num1:Int,num2:Int)->Int{
//    return num1+num2
//}
//
//let sum = addTwoNum(num1: 20, num2: 50)
//
//class Person{
//    var name: String
//    var age:Int
//    init(name:String,age:Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//extension Person:CustomStringConvertible{
//    var description: String {
//        get{
//            return "\(name)age\(age)"
//        }
//    }
//}
//
//let luo1 = Person.init(name: "luo", age: 27)

//var error : (errorCode:Int,errorMessage:String) = (errorCode: 1, errorMessage:"没有权限")
//print(error)

//let error = (1,"没有权限")
//let (errorCode,message) = error
//print(errorCode)
//print(message)
//
//func writeFile(content:String)->(errorCode:Int,errorMessage:String){
//    return (1,"没有权限")
//}
//writeFile(content: "")
//
//let str:String!="abc"
//
//let count = str.count
//if count != nil {
//    print(count)
//}
//if let destStr = str {
//    print(destStr.count)
//}
//
//var emptyString = "111"
//if !emptyString.isEmpty {
//    print("emptyString === "+emptyString)
//}

//let nums = """
//1\
//2\
//    3\
//4
//5
//"""
//print("nums === "+nums)

//var welcome = "Welcome"
//welcome+=" to China!"
//print(welcome)
////for c in welcome{
////    print(c)
////}
//print(welcome[welcome.startIndex])
//print(welcome[welcome.index(before: welcome.endIndex)])
//print(welcome[welcome.index(after: welcome.startIndex)])
//
//let index = welcome.index(welcome.startIndex, offsetBy: 2)
//print(welcome[index])
//welcome.insert("2", at: welcome.index(after: welcome.startIndex))
//welcome.insert(contentsOf: " haha", at: welcome.index(before: welcome.endIndex))
//welcome.append("!")
//welcome.remove(at: welcome.index(before: welcome.endIndex))
//print(welcome)
//
//let range = welcome.index(welcome.startIndex, offsetBy: 2)..<welcome.index(welcome.startIndex, offsetBy: 7)
//welcome.removeSubrange(range)
//print(welcome)

//let hellWorld = "Hello,World"
//let index = hellWorld.index(hellWorld.startIndex, offsetBy: 6)
//let subStr = hellWorld[..<index]
//print(subStr)

//let a: Int? = nil
//let b = 4
//print(a ?? b)

//let range = 0..<10
//for i in range {
//    print(i)
//}

//let names = ["zs","ls","ww","zl"]
//for name in names[..<2] {
//    print(name)
//}

//let num : UInt8 = 8
//print(num<<4)

//struct Vector2d{
//    var x = 0.0,y = 0.0
//}
//
//extension Vector2d{
//    static func + (left: Vector2d, right: Vector2d)->Vector2d{
//        return Vector2d(x: left.x+right.x, y: left.y+right.y)
//    }
//
//    static prefix func -(vector:Vector2d)->Vector2d{
//        return Vector2d(x: -vector.x, y: -vector.y)
//    }
//    static func += (origin:inout Vector2d,new: Vector2d){
//        origin = Vector2d(x: origin.x+new.x, y: origin.y+new.y)
//    }
//}
//
//extension Vector2d : Equatable{
//    static func == (left: Vector2d,right: Vector2d)->Bool{
//        return left.x==right.x && left.y == right.y
//    }
//}
//
//var vector = Vector2d(x: 1.0, y: 3.0)
//let anotherVector = Vector2d(x: 2.0, y: 2.0)
//let third  = vector + anotherVector
//let four = -vector
//vector += anotherVector
//print(third)
//print(four)
//print(vector)
//print(third==four)


/*
//for in
let nums = ["xm":2,"xg":2]
for t in nums {
    print(t)
}
for (name,num) in nums {
    print("\(name):\(num)")
}

for i in stride(from: 0, to: 50, by: 5) {
    print(i)
}
*/

//let num = 59
//switch num {
//case 0..<60:
//    print("no access")
//    fallthrough
//case 60..<90:
//    print("access")
//default:
//    print("perfect!")
//}

//func checkIPAddress(addressNum:String)->(Int,String){
//    let components = addressNum.split(separator: ".")
//
//    guard components.count==4 else{
//        return (100,"invaild")
//    }
//    guard let first = Int(components[0]),first >= 0 && first <= 256 else{
//        return (1,"invaild")
//    }
//    guard let second = Int(components[1]),second >= 0 && second <= 256 else{
//        return (2,"invaild")
//    }
//    guard let third = Int(components[2]),third >= 0 && third <= 256 else{
//        return (3,"invaild")
//    }
//    guard let four = Int(components[3]),four >= 0 && four <= 256 else{
//        return (4,"invaild")
//    }
//    return (200,"true")
//}
//print(checkIPAddress(addressNum: "-123.-2.1.2"))

//var arr = [String]()
//var arr1 = Array<String>()
//var arr2 : [String] = ["1232","234"]
//arr.append("1234")
//print(arr2)
//
//let fiveZs = Array(repeating: "aa", count: 6)
//print(fiveZs)

//let persons = ["zhangsan":123,"lisi":123,"wangwu":123,"zhaoliu":123,"wangmazi":123]
//let names = Array(persons.keys)
//
//
//let numbers = [Int](3...10)
//for(index,num) in numbers.enumerated(){
//    print("index === \(index),num === \(num)")
//}
//
//for num in numbers {
//    print(num)
//}
//
//for i in numbers.indices {
//    print(i)
//}
//
//numbers.forEach { (num) in
//    print("num === \(num)")
//}
//
//var it = numbers.makeIterator()
//while let num = it.next(){
//    print(num)
//}

var array = [10,20,30,50,98,101,30,2]
print(array.first ?? 1)
print(array.first(where: {$0>25}) ?? 10)

//var error : (errorCode:Int,errorMessage:String) = (errorCode: 1, errorMessage:"没有权限")
//print(error)

//let error = (1,"没有权限")
//let (errorCode,message) = error
//print(errorCode)
//print(message)
//
//func writeFile(content:String)->(errorCode:Int,errorMessage:String){
//    return (1,"没有权限")
//}
//writeFile(content: "")
//
//let str:String!="abc"
//
//let count = str.count
//if count != nil {
//    print(count)
//}
//if let destStr = str {
//    print(destStr.count)
//}
//
//var emptyString = "111"
//if !emptyString.isEmpty {
//    print("emptyString === "+emptyString)
//}

//let nums = """
//1\
//2\
//    3\
//4
//5
//"""
//print("nums === "+nums)

//var welcome = "Welcome"
//welcome+=" to China!"
//print(welcome)
////for c in welcome{
////    print(c)
////}
//print(welcome[welcome.startIndex])
//print(welcome[welcome.index(before: welcome.endIndex)])
//print(welcome[welcome.index(after: welcome.startIndex)])
//
//let index = welcome.index(welcome.startIndex, offsetBy: 2)
//print(welcome[index])
//welcome.insert("2", at: welcome.index(after: welcome.startIndex))
//welcome.insert(contentsOf: " haha", at: welcome.index(before: welcome.endIndex))
//welcome.append("!")
//welcome.remove(at: welcome.index(before: welcome.endIndex))
//print(welcome)
//
//let range = welcome.index(welcome.startIndex, offsetBy: 2)..<welcome.index(welcome.startIndex, offsetBy: 7)
//welcome.removeSubrange(range)
//print(welcome)

//let hellWorld = "Hello,World"
//let index = hellWorld.index(hellWorld.startIndex, offsetBy: 6)
//let subStr = hellWorld[..<index]
//print(subStr)

//let a: Int? = nil
//let b = 4
//print(a ?? b)

//let range = 0..<10
//for i in range {
//    print(i)
//}

//let names = ["zs","ls","ww","zl"]
//for name in names[..<2] {
//    print(name)
//}

//let num : UInt8 = 8
//print(num<<4)

//struct Vector2d{
//    var x = 0.0,y = 0.0
//}
//
//extension Vector2d{
//    static func + (left: Vector2d, right: Vector2d)->Vector2d{
//        return Vector2d(x: left.x+right.x, y: left.y+right.y)
//    }
//
//    static prefix func -(vector:Vector2d)->Vector2d{
//        return Vector2d(x: -vector.x, y: -vector.y)
//    }
//    static func += (origin:inout Vector2d,new: Vector2d){
//        origin = Vector2d(x: origin.x+new.x, y: origin.y+new.y)
//    }
//}
//
//extension Vector2d : Equatable{
//    static func == (left: Vector2d,right: Vector2d)->Bool{
//        return left.x==right.x && left.y == right.y
//    }
//}
//
//var vector = Vector2d(x: 1.0, y: 3.0)
//let anotherVector = Vector2d(x: 2.0, y: 2.0)
//let third  = vector + anotherVector
//let four = -vector
//vector += anotherVector
//print(third)
//print(four)
//print(vector)
//print(third==four)


/*
//for in
let nums = ["xm":2,"xg":2]
for t in nums {
    print(t)
}
for (name,num) in nums {
    print("\(name):\(num)")
}

for i in stride(from: 0, to: 50, by: 5) {
    print(i)
}
*/

//let num = 59
//switch num {
//case 0..<60:
//    print("no access")
//    fallthrough
//case 60..<90:
//    print("access")
//default:
//    print("perfect!")
//}

//func checkIPAddress(addressNum:String)->(Int,String){
//    let components = addressNum.split(separator: ".")
//
//    guard components.count==4 else{
//        return (100,"invaild")
//    }
//    guard let first = Int(components[0]),first >= 0 && first <= 256 else{
//        return (1,"invaild")
//    }
//    guard let second = Int(components[1]),second >= 0 && second <= 256 else{
//        return (2,"invaild")
//    }
//    guard let third = Int(components[2]),third >= 0 && third <= 256 else{
//        return (3,"invaild")
//    }
//    guard let four = Int(components[3]),four >= 0 && four <= 256 else{
//        return (4,"invaild")
//    }
//    return (200,"true")
//}
//print(checkIPAddress(addressNum: "-123.-2.1.2"))

//var arr = [String]()
//var arr1 = Array<String>()
//var arr2 : [String] = ["1232","234"]
//arr.append("1234")
//print(arr2)
//
//let fiveZs = Array(repeating: "aa", count: 6)
//print(fiveZs)

//let persons = ["zhangsan":123,"lisi":123,"wangwu":123,"zhaoliu":123,"wangmazi":123]
//let names = Array(persons.keys)
//
//
//let numbers = [Int](3...10)
//for(index,num) in numbers.enumerated(){
//    print("index === \(index),num === \(num)")
//}
//
//for num in numbers {
//    print(num)
//}
//
//for i in numbers.indices {
//    print(i)
//}
//
//numbers.forEach { (num) in
//    print("num === \(num)")
//}
//
//var it = numbers.makeIterator()
//while let num = it.next(){
//    print(num)
//}



