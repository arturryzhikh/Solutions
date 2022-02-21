//: [Next](@next)

import Foundation

open class Example<I,O> {
    public init(input: I, output: O) {
        self.input = input
        self.output = output
    }
    
    public let input: I
    public let output: O
}
