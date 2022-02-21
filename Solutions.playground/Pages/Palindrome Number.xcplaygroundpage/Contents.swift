
import Foundation
import XCTest
/*
 Given an integer x, return true if x is palindrome integer.
 
 An integer is a palindrome when it reads the same backward as forward.
 
 For example, 121 is a palindrome while 123 is not.
 
 
 Example 1:
 
 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.
 Example 2:
 
 Input: x = -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 Example 3:
 
 Input: x = 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 
 */
let example1 = Example(input: 121, output: true)
let example2 = Example(input: -121, output: false)
let example3 = Example(input: 10, output: false)
let example4 = Example(input: 0, output: true)
let example5 = Example(input:1, output: true)

func isPalindrome(_ x: Int) -> Bool {
    let x = String(x)
    guard x.count > 1 else { return true }
    return x == String(String(x).reversed())
    
}

class PalindromeNumberTests: XCTestCase {
    func testExample1() {
        XCTAssertEqual(isPalindrome(example1.input), example1.output)
    }
    func testExample2() {
        XCTAssertEqual(isPalindrome(example2.input), example2.output)
    }
    func testExample3() {
        XCTAssertEqual(isPalindrome(example3.input), example3.output)
    }
    func testExample4() {
        XCTAssertEqual(isPalindrome(example4.input), example4.output)
    }
    func testExample5() {
        XCTAssertEqual(isPalindrome(example5.input), example5.output)
    }
}
    
    
PalindromeNumberTests.defaultTestSuite.run()

