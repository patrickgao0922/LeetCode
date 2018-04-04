//: Playground - noun: a place where people can play
//11. Container With Most Water
//https://leetcode.com/problems/container-with-most-water/description/

import UIKit
let num = [4,8,2,6,3,8,3,6]
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        
        var leftIndex = 0
        var rightIndex = height.count - 1
        
        var max = abs(height[leftIndex] - height[rightIndex]) * min(height[leftIndex], height[rightIndex])
        
        while leftIndex != rightIndex {
            print(max)
            let tempDiff = abs(leftIndex - rightIndex) * min(height[leftIndex], height[rightIndex])
            if (max < tempDiff) {
                max = tempDiff
            }
            if height[leftIndex] < height[rightIndex] {
                leftIndex += 1
            } else {
                rightIndex -= 1
            }
        }
        return max
    }
}

let solution = Solution()
let result = solution.maxArea(num)
