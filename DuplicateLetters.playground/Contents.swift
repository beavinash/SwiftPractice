import UIKit

func duplicateLetters(input: String) -> String {
    var usedLetters = [Character]()
    for letter in input {
        if !usedLetters.contains(letter) {
            usedLetters.append(letter)
        }
    }
    return String(usedLetters)
}

func duplicateLetters1(input: String) -> String {
    var usedLetters = ""
    for letter in input {
        if !usedLetters.contains(letter) {
            usedLetters.append(letter)
        }
    }
    return usedLetters
}

func duplicateLetters2(input: String) -> String {
    var used = [Character: Bool]()
    let result = input.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    return String(result)
}

duplicateLetters(input: "Hello, World!")
duplicateLetters(input: "Leonardo")
duplicateLetters(input: "Leonardo")
