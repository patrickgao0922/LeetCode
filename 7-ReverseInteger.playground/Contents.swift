//: Playground - noun: a place where people can play

import UIKit

let testNum = 1534236469
class Solution {
    func reverse(_ x: Int) -> Int {
        var num = 0
        if x>Int.max {
            return 0
        }
        var input = x
        
        while (input != 0 && input%10==0) {
            input /= 10
        }
        while input != 0 {
                num *= 10
                num += (input%10)
                
            input /= 10
        }
        
        guard num >= Int32.min && num <= Int32.max else {
            return 0
        }
        return num
        
    }
}

let solution = Solution()
solution.reverse(testNum)
