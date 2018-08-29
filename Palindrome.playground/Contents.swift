import UIKit

func palindrome(input: String) -> Bool {
    var result = ""
    
    for letter in input.lowercased() {
        result = String(letter) + result
    }
    
    return input == result
}

func palindrome1(input: String) -> Bool {
    return input.lowercased().reversed() == Array(input.lowercased())
}

palindrome(input: "madam")
palindrome(input: "hello, world")
palindrome1(input: "madam")
palindrome1(input: "hello, world")

