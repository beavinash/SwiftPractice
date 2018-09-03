import UIKit

func fibonacci(input: Int) -> [Int] {
    var result = [0, 1]
    for i in 2..<input {
        let a = result[i - 1]
        let b = result[i - 2]
        result.append(a + b)
    }
    return result
}

func fibonacci1(input: Int) -> [Int] {
    var result = [0, 1]
    for i in 2..<input {
        let a = result[i - 1]
        let b = result[i - 2]
        result.append(a + b)
    }
    return result
}

fibonacci(input: 10)
fibonacci1(input: 5)
