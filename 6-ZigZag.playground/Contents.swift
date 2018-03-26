//: Playground - noun: a place where people can play

import UIKit

var str = "AB"

var subStrs = [String](repeating: "", count:1)

class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        var increment = 0
        var subStrs = [String](repeating: "", count:numRows)
        var step = 1
        
        for i in 0..<s.count {
            let index = s.index(s.startIndex, offsetBy: i)
            subStrs[increment].append(s[index])
            
            if (increment == 0) {
                step = 1
            }
            if (increment == numRows-1) {
                step = -1
            }
            if numRows > 1 {
                increment += step
            }
        }
        
        return subStrs.joined()
    }
}
//
let solution = Solution()
solution.convert(str, 1)

