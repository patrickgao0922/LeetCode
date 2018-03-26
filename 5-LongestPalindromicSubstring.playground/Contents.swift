//: Playground - noun: a place where people can play
// 5. Longest Palindromic Substring: https://leetcode.com/problems/longest-palindromic-substring/description/

import Foundation

class OldSolution {
    func longestPalindrome(_ s: String) -> String {
        if s.count == 1 {
            return s
        }
        for subStrLen in stride(from: s.count, to: 0, by: -1) {
            for index in 0...s.count-subStrLen {
                let subString = getSubString(forString: s, from: index, to: index+subStrLen)
                if isPalindromic(subString) {
                    return subString
                }
            }
        }
        return ""
    }
    
    func getSubString(forString string:String, from:Int, to:Int) -> String {
        let str = string
        let startIndex = str.index(str.startIndex, offsetBy: from)
        let endIndex = str.index(str.startIndex, offsetBy: to)
        return String(str[startIndex..<endIndex])
    }
    
    func isPalindromic(_ s:String) -> Bool {
        if s.count == 1 {
            return true
        }
        let compareLen = Int(ceil(Double(s.count)/2.0))
        for i in 0...(compareLen) {
            let firstIndex = s.index(s.startIndex, offsetBy: i)
            let secondIndex = s.index(s.startIndex, offsetBy: s.count-i-1)
            s[firstIndex]
            s[secondIndex]
            if s[firstIndex] != s[secondIndex] {
                return false
            }
        }
        return true
        
    }
}


//let oldSolution = OldSolution()
//oldSolution.longestPalindrome("ci")


class Solution {
    func longestPalindrome(_ s: String) -> String {
        var start = 0
        var end = 0
        // Move center
        for i in 0..<s.count {
            var len = 0
            // expand from center
            let subStr1Len = expandFromCenter(string: s, leftCenter: i, rightCenter: i)
            let subStr2Len = expandFromCenter(string: s, leftCenter: i, rightCenter: i+1)
            len = max(subStr1Len,subStr2Len)
            if (len > end-start+1) {
                start = i - (len-1)/2
                end = i+len/2
            }
        }
        print(start)
        print(end)
        let startIndex = s.index(s.startIndex, offsetBy: start)
        let endIndex = s.index(s.startIndex, offsetBy: end)
        return String(s[startIndex...endIndex])
    }
    
    func expandFromCenter(string:String, leftCenter:Int, rightCenter:Int) -> Int {
        var leftPo = leftCenter
        var rightPo = rightCenter
        var subStr = ""
        while (leftPo >= 0 && rightPo < string.count) {
            var leftIndex = string.index(string.startIndex, offsetBy: leftPo)
            var rightIndex = string.index(string.startIndex, offsetBy: rightPo)
            if (string[leftIndex]) == (string[rightIndex]) {
                leftPo -= 1
                rightPo += 1
            } else {
                return rightPo - leftPo - 1
            }
            
        }
        
        return rightPo - leftPo - 1
    }
    
}
let solution = Solution()
solution.longestPalindrome("efaaaab")


