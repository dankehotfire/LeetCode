import UIKit

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
