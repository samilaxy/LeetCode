//
//  longestCommonPrefix.swift
//  LeetCode
//
//  Created by Noye Samuel on 13/02/2023.
//

import Foundation

class longestCommonPrefixs {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if strs.isEmpty {
            return ""
        }
        if var prefixStr = strs.first {
            
            for index in 1..<strs.count {
                let str = strs[index]
                while str.contains(prefixStr) == false {
                    let index = prefixStr.index(prefixStr.startIndex, offsetBy: prefixStr.count - 1)
                    prefixStr = String(prefixStr[..<index])
                    if prefixStr.count == 0 {
                        return ""
                    }
                }
            }
            return prefixStr
        }
        
        return ""
    }
}
