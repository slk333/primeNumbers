
import Foundation

var n = 123_456_789_123_456

var sqrtN = Int(sqrt(Double(n)))
print("the first prime divisor cannot be higher than \(sqrtN)")

var factors = [Int]()

let startDate = Date()
var i = 2

while n.isMultiple(of: 2){
    factors.append(2)
    n /= 2
}

i = 3

while i*i <= n{
    if n.isMultiple(of: i){
        factors.append(i)
        n /= i
    }
    else {
        i += 2
        
    }
}
let endDate = Date()
if i != 1{
    factors.append(n)
}

let timeElapsed = endDate.timeIntervalSince(startDate)

print("The primes factors are", terminator: " ")
print(factors)
print("\nComputed in \(timeElapsed)")



