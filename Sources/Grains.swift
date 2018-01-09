//Solution goes in Sources
import Foundation
struct Grains {
    
    static func square(_ number: Int) throws -> UInt64 {

        if number > 64 {
            throw GrainsError.inputTooHigh("Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)")
        } else if number < 1 {
            throw GrainsError.inputTooLow("Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        
        if (number > 1) {
            return try square(number - 1) * 2
        } else {
            return UInt64(number)
        }
    }
    
    static var total: UInt {
        return UInt.max
    }
    enum GrainsError: Error {
         case inputTooHigh(String)
         case inputTooLow(String)

    }
}
