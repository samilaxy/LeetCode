//
//  Remove Duplicates from SortedArrayII.swift
//  LeetCode
//
//  Created by Noye Samuel on 03/02/2023.
//

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index = 0
        while index < nums.count {
            if index > 0 && nums[index] == nums[index - 1] {
                nums.remove(at: index)
            } else {
                index += 1
            }
        }
        return nums.count
    }
}
