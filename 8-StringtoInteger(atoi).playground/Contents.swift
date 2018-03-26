//: Playground - noun: a place where people can play
//https://leetcode.com/problems/string-to-integer-atoi/description/

//Requirements for atoi:
//
//    The function first discards as many whitespace characters as necessary until the first non-whitespace character is found.
//    Then, starting from this character, takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.
//
//The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.
//
//If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.
//
//If no valid conversion could be performed, a zero value is returned. If the correct value is out of the range of representable values, INT_MAX (2147483647) or INT_MIN (-2147483648) is returned.
import UIKit

var str = "Hello, playground"

class Solution {
    func myAtoi(_ str: String) -> Int {
        var string = str
        return 0
        
        func discardsBeginningWhitespace(){
            
            while string[string.startIndex] != Character(" ") {
                string.remove(at: string.startIndex)
            }
        }
    }
}
