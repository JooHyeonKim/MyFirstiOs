import UIKit

//[scope]
//예제 : 알바해서 시급받기

var hours = 50
let payPerHour = 10000
var salary = 0

if hours>40 { //40시간 초과되는 시간은 원래시급의 두배로 쳐줘야함
    let extraHours = hours - 40
    salary += extraHours * payPerHour*2
    hours -= extraHours
}

salary += hours * payPerHour

//print(extraHours)
//scope을 벗어난 변수를 밖에서 출력했기 때문에 error

