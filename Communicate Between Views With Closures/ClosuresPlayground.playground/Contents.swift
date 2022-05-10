import UIKit

var greeting = "Hello, playground"

let greet = {
    print("Hello world")
}

greet()

let properGreeting = { (name: String) in
    print("Hello \(name)")
}

properGreeting("Tunde")

let realGreeting = { (name: String) -> (String) in
   let message = "Real greeting \(name)"
   return message
}

let message = realGreeting("Tunde")
print("I found the following message: \(message)")

func fetch(completion: @escaping (_ data: [String]) -> Void){
    let someFakeData = ["Tunds", "Billy", "Bob"]
    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
        completion(someFakeData)
    }
}

fetch { data in
    print("Got some data")
    dump(data)
}
