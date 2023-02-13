//
//  LetterCombination.swift
//  LeetCode
//
//  Created by Noye Samuel on 13/02/2023.
//

import Foundation

class LetterCombination {
    func letterCombinations(_ digits: String) -> [String] {
        var result = [String]()
        guard !digits.isEmpty else { return result }
        letterCombinations(digits: digits, depth: 0, input: "", result: &result)
        return result
    }
    
    private func letterCombinations(digits: String, depth: Int, input: String, result: inout [String]) {
        guard depth < digits.count else {
            result.append(input)
            return
        }
        let numbers = ["2": "abc", "3": "def", "4": "ghi", "5": "jkl", "6": "mno", "7": "pqrs", "8": "tuv", "9": "wxyz", "0": " "]
        let digit = String(digits[String.Index(encodedOffset: depth)])
        guard let letters = numbers[digit] else { fatalError("Can't find letters for the digit \(digit)") }
        
        for letter in letters {
            let newInput = input + String(letter)
            letterCombinations(digits: digits, depth: depth+1, input: newInput, result: &result)
        }
    }
}
