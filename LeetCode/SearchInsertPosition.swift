//
//  SearchInsertPosition.swift
//  LeetCode
//
//  Created by Noye Samuel on 03/02/2023.
//

import Foundation

class SearchInsertPosition {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        guard !nums.isEmpty else { return 0 }
        if target <= nums.first! {
            return 0
        }
        if target > nums.last! {
            return nums.count
        }
        for i in 1..<nums.count {
            if target > nums[i-1] && target <= nums[i] {
                return i
            }
        }
        return 0
    }
}
