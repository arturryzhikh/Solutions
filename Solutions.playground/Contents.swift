import Foundation
import XCTest
/*Given an array of integers numbers and an integer target, return indices of the two numbers such that they add up to target.\
 You may assume that each input would have exactly one solution, and you may not use the same element twice.\
 You can return the answer in any order.
 Example 1:
 
 Input: numbers = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because numbers[0] + numbers[1] == 9, we return [0, 1].
 Example 2:
 
 Input: numbers = [3,2,4], target = 6
 Output: [1,2]
 Example 3:
 
 Input: numbers = [3,3], target = 6
 Output: [0,1]
 */

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result: [Int] = []
    var startIndex: Int = 0
    for firstIndex in startIndex..<nums.count {
        if let secondIndex = nums[(startIndex + 1)...].firstIndex(of: target - nums[firstIndex]) {
            result = [firstIndex,secondIndex]
            return result
        } else {
            startIndex += 1
        }
    }
    
    return result
}



class TwoSumTests: XCTestCase {
    
    typealias Example = (numbers: [Int],target: Int, result: [Int])
    let example1 = (numbers: [2,7,11,15], target: 9, result: [0,1])
    let example2 = (numbers: [3,2,4], target: 6 ,result: [1,2])
    let example3 = (numbers: [3,3], target:  6,result: [0,1])
    
    var examples:  [Example] {
        return [
            example1,
            example2,
            example3
        ]
    }
   
    func testExample() {
        examples.forEach {
            XCTAssertEqual(twoSum($0.numbers, $0.target),$0.result)
        }
        
     }
    
}

TwoSumTests.defaultTestSuite.run()

