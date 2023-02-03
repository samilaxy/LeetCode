//
//  ValidParentheses.swift
//  LeetCode
//
//  Created by Noye Samuel on 03/02/2023.
//

import Foundation

class ValidParentheses {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else  {
            return false
        }
        var characters: [Character] = []
        
        for br in s {
            switch br {
                case "(" : characters.append(")")
                case "[" : characters.append("]")
                case "{" : characters.append("}")
                default:
                    if characters.count == 0 || characters.removeLast() != br {
                        return false
                    }
            }
        }
        return characters.isEmpty
    }
}
