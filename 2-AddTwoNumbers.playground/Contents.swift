//: Playground - noun: a place where people can play
// LeetCode Problem: 2. Add Two Numbers https://leetcode.com/problems/add-two-numbers/description/

import UIKit


// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}



class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let l1Value = generateListValue(node: l1)
        let l2Value = generateListValue(node: l2)
        let result = l1Value + l2Value
        return generateValueList(value: result)
    }
    
    
    /// Generate Int value for given list
    ///
    /// - Parameter node: givin list
    /// - Returns: result value
    func generateListValue(node:ListNode?) -> Int {
        var tempNode = node
        var string = ""
        while tempNode != nil {
            string="\(tempNode!.val)\(string)"
            tempNode = tempNode!.next
        }
        return Int(string)!
    }
    
    
    /// Generate List for givin Int value
    ///
    /// - Parameter value: Int value
    /// - Returns: Node list
    func generateValueList(value:Int) -> ListNode? {
        var temValue = value
        var resultValString:String = "\(value)"
        var firstNode:ListNode? = nil
        while resultValString != "" {
            let newHeadNode = ListNode(Int(String(resultValString.first!))!)
            newHeadNode.next = firstNode
            firstNode = newHeadNode
            resultValString.removeFirst()
        }
        return firstNode
    }
}


// Test data
var l1Node1:ListNode? = ListNode(2)
var l1Node2:ListNode? = ListNode(4)
var l1Node3:ListNode? = ListNode(3)
l1Node1!.next = l1Node2
l1Node2!.next = l1Node3

var l2Node1:ListNode? = ListNode(5)
var l2Node2:ListNode? = ListNode(6)
var l2Node3:ListNode? = ListNode(4)
l2Node1!.next = l2Node2
l2Node2!.next = l2Node3

let solution = Solution()
var node = solution.addTwoNumbers(l1Node1, l2Node1)




