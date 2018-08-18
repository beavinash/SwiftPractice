import UIKit

func uniqueLetters(input: String) -> Bool {
    var result = [Character]()
    
    for char in input {
        if result.contains(char) {
            return false
        } else {
            result.append(char)
        }
    }
    
    return true
}

func uniqueLetters1(input: String) -> Bool {
    return Set(input).count == input.count
}


uniqueLetters(input: "Hello World!")
uniqueLetters(input: "No Duplicates")

uniqueLetters1(input: "Hello World!")
uniqueLetters1(input: "No Duplicates")
