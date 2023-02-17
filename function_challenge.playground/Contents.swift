import UIKit

// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기

// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기


//1
func printFullname(first: String, last: String){
    print(" fullname is \(first) \(last)")
}

printFullname(first: "photato", last: "kim")


// 2
func printFullname2(_ first: String, _ last: String){
    print(" fullname is \(first) \(last)")
}

printFullname2("gamja", "Kim")

// 3
func returnFullname(first: String, last: String) -> String{
    let fullName = first + " " + last
    return fullName
}

let returnName = returnFullname(first: "Yangjae", last: "Kim")
print(" fullname is \(returnName)")

