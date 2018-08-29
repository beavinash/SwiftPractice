import UIKit

func condenseWhitespace(input: String) -> String {
    let removedWhiteSpace = input.split(separator: " ")
    return removedWhiteSpace.joined(separator: " ")
}

func condenseWhitespace1(input: String) -> String {
    var seenSpace = false
    var resultValue = ""
    
    for letter in input {
        if letter == " " {
            if seenSpace {
                continue
            }
            seenSpace = true
        }
        resultValue.append(letter)
    }
    return resultValue
}

func condenseWhitespace2(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

condenseWhitespace(input: "Avi    Leo   ")
condenseWhitespace1(input: "Avi    Leo   ")
