import UIKit

extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return self.lowercased().range(of: string.lowercased()) != nil
    }
    
    func fuzzyContains1(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}

"Hello, World!".fuzzyContains("Hello")
"Avinash".fuzzyContains1("Avis")
