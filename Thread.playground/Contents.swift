import UIKit

var str = "Hello, playground"
//
//for i in 0..<10 {
//    Thread.detachNewThread {
//        print(i)
//    }
//}

//class ObjectThread{
//    func threadTest() {
//        let thread = Thread(target: self, selector: #selector(threadWorker), object: nil)
//        thread.start()
//    }
//
//    @objc func threadWorker(){
//        print("threadWorker")
//    }
//}
//
//let obj = ObjectThread()
//obj.threadTest()

//class ObjectOperation{
//    func test() {
////        let operation = BlockOperation{[weak self] in
////            self?.threadWorker()
////        }
//        let operation = MyOperation()
//        operation.completionBlock = {() -> Void in
//            print("completionBlock")
//        }
//        let queue = OperationQueue()
//        queue.addOperation(operation)
//    }
//
//    @objc func threadWorker(){
//        sleep(1)
//        print("threadWorker")
//    }
//}
//
//class MyOperation: Operation{
//    override func main() {
//        sleep(1)
//        print("in MyOperation main")
//    }
//}
//
//let operationObj = ObjectOperation()
//operationObj.test()
//print("after invoke test")


//let group = DispatchGroup()
//let queue = DispatchQueue(label: "request_queue")
//
//group.enter()
//queue.async {
//    sleep(1)
//    print("接口A请求完成")
//    group.leave()
//}
//
//group.enter()
//queue.async {
//    sleep(1)
//    print("接口B请求完成")
//    group.leave()
//}
//group.notify(queue: queue){
//    print("请求全部完成")
//}
//print("notify不堵塞")

//group.wait()
//print("请求全部完成")

//let queue = DispatchQueue(label: "request_queue")
//var second = 10
//let timer = DispatchSource.makeTimerSource(flags: [], queue: queue)
//timer.schedule(deadline: .now(), repeating: 1.0)
//timer.setEventHandler {
//    second -= 1
//    if second<0{
//        timer.cancel()
//    }else{
//        print(second)
//    }
//}
//timer.resume()


