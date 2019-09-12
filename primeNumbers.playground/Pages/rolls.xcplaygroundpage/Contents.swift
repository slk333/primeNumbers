import Foundation
/**
 What is the chance of losing x times in a row
 */

let chance = 0.45
let rolls = 13

0.45 + (1-0.45) * 0.45

var a = 0.45
var b = 1 - a

for _ in 1..<rolls{
    a = a + b * 0.45
    b = 1 - a
}
a

let numberFormatter = NumberFormatter()
numberFormatter.maximumFractionDigits = 2
let result = NSNumber(value:b * 100)
let string = numberFormatter.string(from: result)!

print("chance de gagner par roll: \(chance)")
print("La chance de rater \(rolls) rolls de suite s'élève à \(string) %")
