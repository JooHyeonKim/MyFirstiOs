import UIKit

//externalName : 외부에 보여지는 param 이름
//func functionName(externelName param: ParamType) -> ReturnType {
//    return returnValue
//}

//Overload : 같은 이름의 함수지만 파라미터 타입이 다르므로 오류 아님.

func printTotalPrice(price: Int, count: Int){
    print("Total Price: \(price * count)")
}

func printTotalPrice(price: Double, count: Double){
    print("Total Price: \(price * count)")
}

func printTotalPrice(가격: Int, 개수: Int) {
    print("총 가격은 \(가격 * 개수)")
}


//In - out parameter

// 파라미터로 들어온 변수를 변경하고 싶다면?
// 파라미터는 외부에서 복사되어 들어온다. 들어온 값은 상수(constant)!

var value = 3

func incrementAndPrint(_ value: inout Int){
    value += 1
    print(value)
}

incrementAndPrint(&value)
//inout 키워드를 통해 copy in & copy out을 할 때
//실제 함수에 value를 넘겨줄 때 &변수명

// Function as a variable

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add

function(4,2) //6

function = subtract

function(4,2) //2


func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int){
    
    let result = function(a,b)
    print(result)
}

printResult(add, 10, 5) //15
printResult(subtract, 10, 5) //5
