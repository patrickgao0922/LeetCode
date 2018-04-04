//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        if p.isEmpty {
            return s.isEmpty
        }
        
        if p[p.startIndex] != Character("*") {
            
        }
        
        return false
    }
}


let solution = Solution()

solution.isMatch("aa","a")
solution.isMatch("aa","aa")
solution.isMatch("aaa","aa")
solution.isMatch("aa", "a*")
solution.isMatch("aa", ".*")
solution.isMatch("ab", ".*")
solution.isMatch("aab", "c*a*b")
