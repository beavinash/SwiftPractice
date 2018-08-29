import UIKit

func uniqueLetters(input: String) -> Bool {
    
    var result = ""
    
    for letter in input {
        if result.contains(letter) {
            return false
        } else {
            result.append(letter)
        }
    }
    return true
}

func uniqueLetters1(input: String) -> Bool {
    return Set(input).count == input.count
}


uniqueLetters(input: "No duplicates")
uniqueLetters(input: "Hello World!")
uniqueLetters1(input: "No duplicates")
uniqueLetters1(input: "Hello World!")
