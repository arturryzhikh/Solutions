//: [Next](@next)


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
    
    let example1 = Example(input: (nums: [3,2,4], target: 6), output: [1,2])
    let example2 = Example(input: (nums: [2,7,11,15], target: 9), output: [0,1])
    let example3 = Example(input:(nums: [3,3], target:6),output: [0,1])
    
    func testExample1() {
        XCTAssertEqual(twoSum(example1.input.nums, example1.input.target),example1.output)
        
    }
    
    func testExample2() {
        XCTAssertEqual(twoSum(example2.input.nums, example2.input.target),example2.output)
        
    }

    func testExample3() {
        XCTAssertEqual(twoSum(example3.input.nums, example3.input.target),example3.output)
        
    }
    
}


TwoSumTests.defaultTestSuite.run()
