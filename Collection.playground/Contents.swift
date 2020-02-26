import UIKit

//merge 会改变初始字典的值，merging会重新生成一个新的字典，不会影响之前的字典
//var dict = ["a":1,"b":2]
//dict.merge(["a":6]) { (current,_) in current }
//dict.merge(["a":5]) { (_,new) in new }
//let newDict = dict.merging(["a":4]) { (current, _) -> Int in
//    current
//}
//let newDict = dict.merging(["a":4]) { (_, new) -> Int in
//    new
//}

var personDict = ["zhangsan":18,"lisi":12,"wangwu":13]
personDict["zhangsan"] = nil




