//: [Next](@next)

import Foundation
import XCTest
/*
 169. Majority Element

 Given an array nums of size n, return the majority element.

 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

  

 Example 1:

 Input: nums = [3,2,3]
 Output: 3
 Example 2:

 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
  
 */
import Foundation


func majorityElementIn(nums: [Int]) -> Int {
    let dictionary = nums.reduce(into: [:]) { counts, number in
        counts[number,default: 0] += 1
    }
    return dictionary.sorted { $0.value > $1.value }.first!.key
//    let dictionary = Dictionary(grouping: nums, by: { $0 })
//
//    return dictionary.mapValues { (value: [Int]) in
//        return value.count
//    }.sorted { $0.value > $1.value}.first!.key
   
    
}

class MajorityElementTest: XCTestCase {
    let example1 = Example(input: [3,2,3], output: 3)
    let example2 = Example(input: [2,2,1,1,1,2,2], output: 2)
    
    func testExample1() {
        let result = majorityElementIn(nums: example1.input)
        XCTAssertEqual(result, example1.output)
    }
    
    func testExample2() {
        let result = majorityElementIn(nums: example2.input)
        XCTAssertEqual(result, example2.output)
    }
    
    
}
MajorityElementTest.defaultTestSuite.run()
