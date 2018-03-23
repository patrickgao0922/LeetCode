//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"
let testDouble = Double(1)/2
func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var array1 = nums1
    var array2 = nums2
    
    if nums1.count > nums2.count {
        array2 = nums1
        array1 = nums2
    }
    var imin = 0
    var imax=array1.count

    repeat {
        var i = (imin+imax)/2
        var j = (array1.count+array2.count+1)/2-i
        if i<imax && array1[i-1] > array2[j] {
            imax-=1
        }else
        if i>imin && array1[i] > array2[j-1] {
            imax += 1
        }
        else {
            var maxLeft = 0
            if i == 0 {
                maxLeft = array2[j-1]
                
            } else if j == 0{
                maxLeft = array1[i-1]
            } else {
                maxLeft = max(array1[i-1],array2[j-1])
            }
            if (array2.count + array1.count) % 2 == 1 {
                return Double(maxLeft)
            }
            
            var minRight = 0
            if i == array1.count {
                minRight = array2[j]
            }
            else if j == array2.count {
                minRight = array1[i]
            }
            else {
                minRight = min(array2[j],array1[i])
            }
            var result = Double((maxLeft+minRight))/2.0
            return result
        }
    } while(imin <= imax)
    
    

   return 0
}

//func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
//
//    var numbers1 = nums1
//    var numbers2 = nums2
//    numbers1.append(contentsOf: numbers2)
//
//    numbers1.sort()
//
//
//
//    return 0
//}




findMedianSortedArrays([1,4,5], [2,5,7,8])

