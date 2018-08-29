import UIKit

func runLength(input: String) -> String {
    var currentLetter: Character?
    var returnValue = ""
    var letterCount = 0
    
    for letter in input {
        if letter == currentLetter {
            letterCount += 1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCount)")
            }
            currentLetter = letter
            letterCount = 1
        }
    }
    if let current = currentLetter {
        returnValue.append("\(current)\(letterCount)")
    }
    return returnValue
}

runLength(input: "aaabbbcaaa")
