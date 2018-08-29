import UIKit

func power(first: Int, powerNumber: Int) -> Int {
    guard first > 0 && powerNumber > 0 else { return 0 }
    var result = first
    for _ in 1..<powerNumber {
        result = result * first
    }
    return result
}

func power1(first: Int, powerNumber: Int) -> Int {
    guard first > 0 && powerNumber > 0 else { return 0}
    
    if powerNumber == 1 { return first }
    
    return first * power(first: first, powerNumber: powerNumber - 1)
}

power(first: 5, powerNumber: 3)
power1(first: 5, powerNumber: 4)


