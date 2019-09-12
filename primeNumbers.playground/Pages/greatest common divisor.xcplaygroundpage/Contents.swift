import Foundation

let firstNumber = 15648
let secondNumber = 7584

var a = firstNumber
var b = secondNumber
var d = 1

while d != 0{
    d = abs(a - b)
    (a,b) = (b,d)
}

a

if a > 1{
    
    let aReducted = firstNumber / a
    let bReducted = secondNumber / a
    print("\(firstNumber) et \(secondNumber) sont un multiple de \(a)")
    print("\(firstNumber) = \(aReducted) * \(a)")
    print("\(secondNumber) = \(bReducted) * \(a)")
    print("\n")
     print("La fraction \(firstNumber)/\(secondNumber) peut s'écrire sous la forme \(aReducted)/\(bReducted)")
}
else{
    print("\(firstNumber) et \(secondNumber) ne sont pas le multiple d'un même nombre, ils ne partagent aucun facteur premier. La fraction est irréductible")
}






