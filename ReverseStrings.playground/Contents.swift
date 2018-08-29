import UIKit

func reverseString(input: String) -> String {
//    let words = input.split(separator: " ")
//    var resultValue = ""
//
//    for letter in words {
//        resultValue = resultValue + letter
//    }
//    return resultValue
    let parts = input.split(separator: " ")
    let reversed = parts.map { String($0.reversed()) }
    return reversed.joined(separator: " ")
}

reverseString(input: "Avinash is Great!")
