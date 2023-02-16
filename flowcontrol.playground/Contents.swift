import UIKit


//let num = 10
//
//switch num {
//case 0:
//    print("---> 0 입니다.")
////case 0...20: //range도 넣을 수 있다.
////    print("---> 0 ... 20 사이의 수 입니다. ")
//case 10:
//    print("---> 10 입니다.")
//
//default:
//    print("---> 나머지")
//}
//
//let pet = "bird"
//
//switch pet {
//case "dog", "cat": //여러개도 올 수 있다.
//    print("---> 이것은 house pet 입니다.")
//
//default:
//    print("이것은 모르는 동물입니다.")
//
//}


//switch문에서도 where 사용 가능

let num = 5

switch num {
case _ where num%2 == 0:
    print("---> 짝수")
default:
    print("---> 홀수")
}

//let coordinate = (x:0, y:4)
//
//switch coordinate {
//case (0,0):
//    print("---> 기준점")
//case (_,0):
//    print("---> 점이 x축에 있음.")
//case(0,_):
//    print("---> 점이 y축에 있음.")
//default:
//    print("---> 어딘가 있는 좌표")
//}


let coordinate = (x:3, y:3)

switch coordinate {
case (0,0):
    print("---> 기준점")
case (let x,0):
    print("---> 점이 x축에 있음. x:\(x)")
case(0,let y):
    print("---> 점이 y축에 있음. y:\(y)")
case(let x, let y) where x == y:
    print("---> x와 y가 같아요 x: \(x), y:\(y)")
case(let x, let y):
    print("---> 어딘가 있는 좌표 x:\(x), y: \(y)")
    
}
