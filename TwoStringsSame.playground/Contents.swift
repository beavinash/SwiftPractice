import UIKit

func twoStringsSame(string1: String, string2: String) -> Bool {
    
    guard string1.count == string2.count else { return false }
    var result = string2
    
    for letter in string1 {
        if let index = result.index(of: letter) {
            result.remove(at: index)
        }
    }
    return result.count == 0
}

func twoStringsSame1(string1: String, string2: String) -> Bool {
    guard string1.count == string2.count else { return false }
    
    for letter in string2 {
        if !string1.contains(letter) {
            return false
        }
    }
    return true
}

func twoStringsSame2(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

twoStringsSame(string1: "abca", string2: "abca")
twoStringsSame(string1: "abc", string2: "cba")
twoStringsSame(string1: "abcA", string2: "Abc")
twoStringsSame1(string1: "abca", string2: "abca")
twoStringsSame1(string1: "abc", string2: "cba")
twoStringsSame1(string1: "abcA", string2: "Abc")
twoStringsSame2(string1: "abca", string2: "abca")
twoStringsSame2(string1: "abc", string2: "cba")
twoStringsSame2(string1: "abcA", string2: "Abc")
