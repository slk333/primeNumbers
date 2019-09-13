import Foundation
/**
 What is the chance of losing x times in a row
 */

let pLose = 0.51
let rolls = 15

var p = 1.0

for _ in 0..<rolls{
    p *= pLose
}


let inverse = Int(1.0/p)
let numberFormatter = NumberFormatter()
numberFormatter.maximumFractionDigits = 5
let result = NSNumber(value:p * 100.0)
let string = numberFormatter.string(from: result)!

print("chance de perdre par roll: \(pLose)")
print("La chance de rater \(rolls) rolls de suite s'élève à \(string) %")
print("it will happen once every \(inverse) rolls")
