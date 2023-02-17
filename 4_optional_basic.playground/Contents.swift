import UIKit

// Q. 최애 배우 이름을 담는 변수 작성 (타입 String?)
// let num = Int("10") num 타입을 예상해보기

let fav_actor: String? = nil
fav_actor


//Forced unwrapping optional = 억지로 박스 열기
//Optional binding = 부드럽게 박스 열어보기
//Guard statement = 부드럽게 박스 열어보기 2탄 (feat. guard)
//Nil coalescing = 박스를 열었더니 값이 없으면 default 값을  줘보자


var carName: String?
carName = nil

if let unwrappedCarName = carName { //carName 안에 value가 있으면 열 수 있다.
    print(unwrappedCarName)

} else {//nil일때
    print("car name 없다!!")
}

//좀 더 부드럽게 언박싱
//type converting

func printParsedInt(from: String) {

    if let parsedInt = Int(from){ //숫자가 들어오면 int로 binding될것임.
        print(parsedInt)

    }else{
        print("Int로 converting할 수 없습니다.")
    }
}

printParsedInt(from: "puang11")


// guard statement 사용

func printParsedInt(from: String) {

    //binding 실패하는 경우는 맨 처음에 거르자
    guard let parsedInt = Int(from) else {
        print("Int로 converting할 수 없습니다.")
        return
    }

    print(parsedInt)
}

printParsedInt(from: "452")



var carName: String?
carName = "lamborghini"

let myCarName = carName ?? "porsche"
//optional string 값이 value를 갖고 있다면 value를 myCarName에 넣고,
//               이 nil이라면 default값인 "porsche"를 넣음



//Q1. 최애 음식이름을 담는 변수를 작성하고 (String?), optional binding 을 이용해서 값을 확인해보기

let fav_food : String? = nil

if let my_fav_food = fav_food {
    print(my_fav_food)
    
}else{
    print("nil")
}

let myFavFood = fav_food ?? "mara tang!"
print(myFavFood)


//Q2. 닉네임을 받아서 출력하는 함수를 만들어보기, 입력 파라미터 String?

func printNickname (nickname: String?){
    
    guard let mynickname = nickname else{
        print("nickname 없음")
        return
    }
    
    print("---> 닉네임: \(mynickname)")
}

let my_nickname : String? = "sompunch"
printNickname(nickname: my_nickname)



