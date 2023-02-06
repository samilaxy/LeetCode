//
//  9. Palindrome Number.swift
//  LeetCode
//
//  Created by Noye Samuel on 06/02/2023.
//

import Foundation

class PalindromeNumber {
    func isPalindrome(_ x: Int) -> Bool {
        return String(x) == String(String(x).reversed())
    }
}
