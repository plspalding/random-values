//
//  RandomValue.swift
//  Randomness
//
//  Created by Preston Spalding on 09/01/2020.
//  Copyright © 2020 Preston Spalding. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

typealias Generator<T> = () -> T

protocol RandomValue {
    associatedtype Value where Value: Comparable, Value: RandomValue
    static func wrappedRandom(in range: Range<Value>) -> () -> Value
    static func wrappedRandom(in range: ClosedRange<Value>) -> () -> Value
    
    static func closedRange() -> ClosedRange<Value>
}

extension RandomValue where Self: Comparable {
    static func wrappedRandom(in range: Range<Self.Value>) -> () -> Self.Value {
        return wrappedRandom(in: range.lowerBound...range.upperBound)
    }
}

struct User {
    let name: String
    let age: Int
    let score: Int
    let team: String
}

extension User: RandomValueSimple {
    static func wrappedRandom() -> () -> User {
        return makeRandom(User.init)
    }
}
