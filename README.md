# primeNumbers

```swift
let limit = 1000

var primeCheckArray = Array.init(repeating: true,count:limit)
// a number only get unprime if he is a multiple of an integer greater than 1 and not itself
func renderPrimeArray(){
    
    primeCheckArray[0] = false
    primeCheckArray[1] = false
    
    
    var slice = primeCheckArray[...]
    while true == true{
        
        
        // getting the next prime
        guard let currentlyTesting = slice.firstIndex(where: { (prime) -> Bool in
            prime == true
        })else{return}
        
        // calculating the multiples
        
        for i in 2..<limit{
            if i == currentlyTesting{continue}
            
            if i.isMultiple(of: currentlyTesting){
                primeCheckArray[i] = false
                
            }
            
        }
        // removing the prime and under from the slice
        let newSliceStart = currentlyTesting + 1
        slice = primeCheckArray[newSliceStart...]
        
    }
    
}

renderPrimeArray()
primeCheckArray

for (i,isPrime) in primeCheckArray.enumerated(){
    if isPrime{
        print("\(i) is prime")
    }
}
```
