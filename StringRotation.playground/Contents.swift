import UIKit

func stringRotation(input: String, rotated: String) -> Bool {
    guard input.count == rotated.count else {
        return false
    }
    
    let combined = input + rotated
    return combined.contains(rotated)
}

stringRotation(input: "abcde", rotated: "eabcd")
