/*
 Given an integer x, return true if x is a palindrome, and false otherwise.
 
 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.
 */

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let xString = String(x)
        return xString == String(xString.reversed())
    }
}
