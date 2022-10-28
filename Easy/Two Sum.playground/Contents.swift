import UIKit

/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 You can return the answer in any order.
 
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var resultArray: [Int] = []
        var dictionary: [Int: Int] = [:]
        
        nums.enumerated().forEach {
            if let index = dictionary[target - $0.element] {
                resultArray = [index, $0.offset]
            }
            dictionary[$0.element] = $0.offset
        }
        
        return resultArray
    }
}
