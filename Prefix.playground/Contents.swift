import UIKit

func findPrefix(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    guard let first = parts.first else {
        return ""
    }
    
    var currentPrefix = ""
    var bestPrefix = ""
    
    for letter in first {
        currentPrefix.append(letter)
        for word in parts {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }
    return bestPrefix
}

findPrefix(input: "Swift Swi Swii")
