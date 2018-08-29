import UIKit

func threeDifferentLetters(first: String, second: String) -> Bool {
    guard first.count == second.count else { return false }
    
    let firstArray = Array(first)
    let secondArray = Array(second)
    var differences = 0
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            differences += 1
            if differences == 4 {
                return false
            }
        }
    }
    return true
}

threeDifferentLetters(first: "cramp", second: "clamp")
threeDifferentLetters(first: "Hello", second: "World")
