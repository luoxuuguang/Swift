import UIKit

func addTwoNumFunc1(num1:Int,num2:Int)->Int{
    return num1+num2
}

func addTwoNumFunc2(first num1:Int,second num2:Int)->Int{
    return num1+num2
}

func addTwoNumFunc3(_ num1:Int,_ num2:Int)->Int{
    return num1+num2
}
print(addTwoNumFunc1(num1: 1, num2: 2))
print(addTwoNumFunc2(first: 1, second: 2))
print(addTwoNumFunc3(1, 2))

func addNumbers(nums:Int...)->Int{
    var sum = 0
    for num in nums {
        sum+=num
    }
    return sum
}
print(addNumbers(nums: 1,2,3,4,5))

var num1 = 10
var num2 = 8
func swapValue(_ a: inout Int,_ b:inout Int){
    let temp = a
    a = b
    b = temp
}
swapValue(&num1, &num2)
print("num1 === \(num1)   num2 === \(num2)")

//使用函数类型
var mathFunction:(Int,Int)->Int = addTwoNumFunc1
print(mathFunction(2,3))

let swapFunc: (inout Int,inout Int)-> () = swapValue
swapFunc(&num1,&num2)
print("num1 === \(num1)   num2 === \(num2)")

func chooseStepFunction(backward:Bool) -> (Int)->Int{
    func stepForward(step: Int) -> Int{
        return step + 1
    }
    func stepBackward(step: Int) -> Int {
        return step - 1
    }
    return backward ? stepBackward : stepForward
}

var currentVaule = -4
let stepFunction = chooseStepFunction(backward: currentVaule>0)
while currentVaule != 0 {
    currentVaule = stepFunction(currentVaule)
}
print(currentVaule)

func printMathResult(_ mathFunction:(Int,Int)->Int,_ a : Int,_ b: Int ){
    let result = mathFunction(a,b)
    print("Result === \(result)")
}
printMathResult(addTwoNumFunc1, 3, 5)

//闭包

let names = ["zhangsan","lisi","wangwu","zhaoliu"]
//let sortedNames = names.sorted(by: { (s1:String , s2: String) -> Bool in
//    return s1 > s2
//})
//let sortedNames = names.sorted(by: { s1 , s2 in
//    return s1 > s2
//})
//let sortedNames = names.sorted(by: { s1 , s2 in s1 > s2})
//let sortedNames = names.sorted(by: { $0 > $1 })
//let sortedNames = names.sorted(by: >)
let sortedNames = names.sorted{$0 > $1}
print(sortedNames)

func makeIncrementer(amount:Int)->()->Int{
    var total = 0
    func incrementer()->Int{
        total += amount
        return total
    }
    return incrementer
}
let incrementerByTen =  makeIncrementer(amount: 10)
print(incrementerByTen())
print(incrementerByTen())
print(incrementerByTen())
let incrementerBySenven =  makeIncrementer(amount: 7)
print(incrementerBySenven())
print(incrementerByTen())

var customerNames = ["zhangsan","lisi","wangwu","zhaoliu"]
//let customerProvider = { customerNames.remove(at: 0) }
//customerProvider()
var providers:[()->String] = []

func collectCustomerProviders(provider:@autoclosure @escaping ()->String){
    providers.append(provider)
}
collectCustomerProviders(provider: customerNames.remove(at: 0))
collectCustomerProviders(provider: customerNames.remove(at: 0))

print(customerNames.count)

for provider in providers {
    print(provider())
}
print(customerNames.count)

let numbers = [1,2,3,5,10]
print(numbers.map{ $0*10 })
print(numbers.filter{ $0>4 })
print(numbers.reduce(100){ $0+$1 })

let arrayNumbers = [[1,2,3],[4,5,6],[7,8,9]]
print(arrayNumbers.flatMap{ $0.map{ $0*10 }})

let emptyNames : [String?] = ["zhangsan",nil,"lisi","wangwu",nil,"zhaoliu"]
print(emptyNames.count)

print(emptyNames.compactMap{ $0 })
print(emptyNames.compactMap{ $0?.count})

let NON_WORDS = ["of","a","and","the","on","or"]
func wordFrep(words: String)->[String:Int]{
    var wordDict : [String : Int] = [:]
    let wordlist = words.split(separator: " ")
    for word in wordlist{
        let lowercaseWord = word.lowercased()
        if !NON_WORDS.contains(lowercaseWord) {
            if let count = wordDict[lowercaseWord]{
                wordDict[lowercaseWord] = count+1
            }else{
                wordDict[lowercaseWord] = 1
            }
        }
    }
    return wordDict
}
func wordFrep2(words: String)->[String:Int]{
    var wordDict : [String : Int] = [:]
    let wordlist = words.split(separator: " ")
    wordlist.map{ $0.lowercased()}
        .filter{ !NON_WORDS.contains($0)}
        .forEach{ wordDict[$0] = (wordDict[$0] ?? 0) + 1 }
    return wordDict
}

let testString = "You cannot look back to the long period of our private friendship and political harmony with more affecting recollections than I do. If they are a source of pleasure to you, what aren’t they not to be to me? We cannot be deprived of the happy consciousness of the pure devotion to the public good with Which we discharge the trust committed to us and I indulge a confidence that sufficient evidence will find in its way to another generation to ensure, after we are gone, whatever of justice may be withheld9 whilst we are here"

print(wordFrep(words: testString))
print(wordFrep2(words: testString))


