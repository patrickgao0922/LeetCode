//: Playground - noun: a place where people can play
// 5. Longest Palindromic Substring: https://leetcode.com/problems/longest-palindromic-substring/description/

import Foundation

class Solution {
    func longestPalindrome(_ s: String) -> String {
        for subStrLen in stride(from: s.count, to: 1, by: -1) {
            for index in 0...s.count-subStrLen {
                let subString = getSubString(forString: s, from: index, to: index+subStrLen)
                if subString.first == subString.last {
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
}


let solution = Solution()
solution.longestPalindrome("abadbbbbbaaaaaaaaaaaaaba")
