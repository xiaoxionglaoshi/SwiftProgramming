
import UIKit
// 闭包的声明
// 例: 两个整数求和
let add:(Int, Int) -> (Int) = {
    (a, b) in return a + b
}
let sum = add(1, 2)
print(sum)


typealias AddBlock = (Int, Int) -> (Int)
class viewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let add: AddBlock = {
            (a, b) in
            return a + b
        }
        let sum = add(1, 2)
        print(sum)
    }
}

// 尾随闭包
func post(url: String, success: (String) -> Void) {
    print("发送post请求")
    success("请求成功")
}

post(url: "http") { (success) in
    print(success)
}

// 逃逸闭包
func requestData(urlString: String, succeed: @escaping (Any?) -> (Void),failure: @escaping (Error?) -> (Void)){
    
    let request = URLRequest(url: URL(string: urlString)!)
    //发送网络请求
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        if error == nil {
            // 请求成功,执行回调
            //Data转json
            do {
                if let data = data {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    succeed(json)
                }
            } catch {
                print("天知道怎么没转成功")
            }
            
        } else {
            failure(error)
        }
    }
    task.resume()
}


let listUrl = "http://service.ingkee.com/api/live/gettop?imsi=&uid=17800399&proto=5&idfa=A1205EB8-0C9A-4131-A2A2-27B9A1E06622&lc=0000000000000026&cc=TG0001&imei=&sid=20i0a3GAvc8ykfClKMAen8WNeIBKrUwgdG9whVJ0ljXi1Af8hQci3&cv=IK3.1.00_Iphone&devi=bcb94097c7a3f3314be284c8a5be2aaeae66d6ab&conn=Wifi&ua=iPhone&idfv=DEBAD23B-7C6A-4251-B8AF-A95910B778B7&osversion=ios_9.300000&count=5&multiaddr=1"

//在这里面不能执行成功,需要建工程项目中执行
requestData(urlString: listUrl, succeed: { (json) -> (Void) in
    print(json)
    }) { (error) -> (Void) in
        print("error: \(error)")
}



