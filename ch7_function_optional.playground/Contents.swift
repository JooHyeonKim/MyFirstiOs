import UIKit

//function : 어떤 기능을 수행하는 코드블럭
func printName() {
    print("---> My name is Jason")
}

printName()

// param 1개
// 숫자를 입력 받아, 10을 곱해서 출력한다.
func printMultipleofTen(value: Int){
    print("\(value)*10 = \(value*10)")
}
printMultipleofTen(value: 9)


// param 2개
// 물건값과 개수를 입력으로 주면, 전체 금액을 출력하는 함수

func printTotalPrice(price: Int, count: Int){
    print(" Total price: \(price * count)")
}

printTotalPrice(price: 1500, count: 5)
printTotalPrice(price: 1500, count: 3)
printTotalPrice(price: 1500, count: 2)
printTotalPrice(price: 1500, count: 7)



print("\ndefault 값 설정도 가능")

func printTotalpriceWithDefaultValue(price: Int = 2000, count: Int){
    print(" Total price: \(price * count)")
}

printTotalpriceWithDefaultValue(count: 5)
printTotalpriceWithDefaultValue(count: 5)
printTotalpriceWithDefaultValue(count: 5)

//default 값이 아닌 다른 값을 price로 사용할수도 있음
printTotalpriceWithDefaultValue(price: 1500 , count: 5)
print("\n\n\n\n\n\n\n\n\n\n\n")



//외부로 전달할 값의 type : Int
func totalPrice(price: Int, count: Int) -> Int {
    
    let totalPrice = price * count
    
    return totalPrice //Int 타입을 리턴
}

let calculatedTotalprice = totalPrice(price: 2000, count: 10)
print("---> total: \(calculatedTotalprice)")
