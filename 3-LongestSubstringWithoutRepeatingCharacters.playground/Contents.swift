//: Playground - noun: a place where people can play
// 3. Longest Substring Without Repeating Characters: https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

import Foundation
let str = "WERTYUIOP"
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        for subStrLen in stride(from: s.count, to: 1, by: -1) {
            for index in 0...s.count-subStrLen {
                let subString = getSubString(forString: s, from: index, to: index+subStrLen)
                let characterSet = Set(subString)
                if characterSet.count == subStrLen {
                    return subString.count
                }
            }
        }
        return 1
    }
    
    func getSubString(forString string:String, from:Int, to:Int) -> String {
        let str = string
        let startIndex = str.index(str.startIndex, offsetBy: from)
        let endIndex = str.index(str.startIndex, offsetBy: to)
        return String(str[startIndex..<endIndex])
    }
}

let solution = Solution()
solution.lengthOfLongestSubstring(str)


