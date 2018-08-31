import UIKit

func primeNumber1(number: Int) -> Bool {
    
    guard number > 1 else {
        return false
    }
    for num in 2..<number {
        if number % num == 0 {
            return false
        }
    }
    return true
}

primeNumber1(number: 100)
primeNumber1(number: 3)
