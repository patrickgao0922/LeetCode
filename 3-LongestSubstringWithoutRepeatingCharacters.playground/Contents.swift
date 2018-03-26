//: Playground - noun: a place where people can play
// 3. Longest Substring Without Repeating Characters: https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

import Foundation
var str = "fdsdfas"
class OldSolution {
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
        if s.count != 0 {
            return 1
        }
        return 0
    }
    
    func getSubString(forString string:String, from:Int, to:Int) -> String {
        let str = string
        let startIndex = str.index(str.startIndex, offsetBy: from)
        let endIndex = str.index(str.startIndex, offsetBy: to)
        return String(str[startIndex..<endIndex])
    }
}

/// Sliding Window
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count <= 1 {
            return s.count
        }
        var maxNum = 0
        var i = 0
        var j = 0
        //        [i,j] Whindow
        //        var set = Set<Character>()
        var dic = [Character:Int]()
        while (i < s.count && j < s.count) {
            var iIndex = s.index(s.startIndex, offsetBy: i)
            var jIndex = s.index(s.startIndex, offsetBy: j)
            if let charIndex = dic[s[jIndex]] {
                //                set.insert(s[jIndex])
                i = max(charIndex, i)
            }
            
            j += 1
            dic[s[jIndex]] = j
            
            maxNum = max(maxNum,j-i )
            
            
            
            
        }
        
        return maxNum
    }
}

let solution = Solution()
solution.lengthOfLongestSubstring(str)

//let oldSolution = OldSolution()
//oldSolution.lengthOfLongestSubstring(str)


