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
Int32.min
var str = "-2147483649"

class Solution {
    func myAtoi(_ str: String) -> Int {
        var string = str
        
        var result = ""
        string = discardsBeginningWhitespace(string:string)
        if string.count == 0 {
            return 0
        }
        if string[string.startIndex] == Character("-") || string[string.startIndex] == Character("+") {
            result.append(string[string.startIndex])
            string.remove(at: string.startIndex)
        }
        if string.count == 0 || string[string.startIndex] < Character("0") || string[string.startIndex] > Character("9") {
            return 0
        }
        while (string.count != 0 && string[string.startIndex] >= Character("0") && string[string.startIndex] <= Character("9")) {
            result.append(string[string.startIndex])
            string.remove(at: string.startIndex)
        }
        
        // Change negative bound
        if result[result.startIndex] == Character("-") {
            var minValueString = String(Int32.min)
            if result.count > minValueString.count {
                return Int(Int32.min)
            }
        } else {
            
            if result[result.startIndex] == Character("+") {
                result.remove(at: result.startIndex)
            }
            
            var maxValueString = String(Int32.max)
            if result.count > maxValueString.count {
                return Int(Int32.max)
            }
        }
        
        guard let value = Int(result) else{
            return 0
        }
        if value < Int32.min {
            return Int(Int32.min)
        } else if value > Int32.max{
            return Int(Int32.max)
        } else {
            return value
        }
        return 0
        
    }
    func discardsBeginningWhitespace(string:String) -> String{
        var tempString = string
        while tempString.count != 0 && tempString[tempString.startIndex] == Character(" "){
            tempString.remove(at: tempString.startIndex)
        }
        return tempString
    }
}

let soluton = Solution()
soluton.myAtoi(str)

