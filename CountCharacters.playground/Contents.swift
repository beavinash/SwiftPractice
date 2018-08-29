import UIKit

func countCharacters(input: String, countOfLetter: Character) -> Int {
    var letterCount = 0
    
    for letter in input {
        if countOfLetter == letter {
            letterCount += 1
        }
    }
    
    return letterCount
}

func countCharacters1(input: String, countOfLetter: Character) -> Int {
    let array = input.map { String($0) }
    print(array)
    let counted = NSCountedSet(array: array)
    print(counted)
    return counted.count(for: countOfLetter)
}

countCharacters(input: "Avinash", countOfLetter: "A")
countCharacters(input: "Hello, World!", countOfLetter: "l")
countCharacters1(input: "Avinash", countOfLetter: "A")
countCharacters1(input: "Hello, World!", countOfLetter: "l")
