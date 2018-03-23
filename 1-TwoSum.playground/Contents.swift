//: Playground - noun: a place where people can play
// LeetCode Problem: 1. Two Sum https://leetcode.com/problems/two-sum/description/
import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        for i in 0...nums.count - 2 {
            for j in i+1...nums.count - 1 {
                if nums[i] + nums[j] == target {
                    return [i,j]
                }
            }
        }
        return []
    }
}

let solution = Solution()

solution.twoSum([2,7,11,15], 17)
