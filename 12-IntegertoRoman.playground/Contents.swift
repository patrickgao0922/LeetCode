//: Playground - noun: a place where people can play
//Given an integer, convert it to a roman numeral.
//
//Input is guaranteed to be within the range from 1 to 3999.

import Foundation

class Solution {
    func intToRoman(_ num: Int) -> String {
        var input = num
        let romanChars = [
            (1,"I"),
            (4,"IV"),
            (5,"V"),
            (10,"X"),
            (50,"L"),
            (100,"C"),
            (500,"D"),
            (1000,"M")
        ]
        var romanNum = ""
        
        for index in stride(from: romanChars.count - 1, through: 0, by: -1) {
            let quot = input / romanChars[index].0
            let reminder = input % romanChars[index].0
            
            if quot != 0 {
                let subString = String(repeating: romanChars[index].1, count: quot)
                if reminder == 9 {
                    
                }
                romanNum.append(subString)
            }
            input = reminder
            if input == 0 {
                return romanNum
            }
        }
        return romanNum
    }
}


let solution = Solution()
solution.intToRoman(3000)

