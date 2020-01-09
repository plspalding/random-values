//
//  Curry.swift
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

func curry<A,B,C>(_ closure: @escaping (A,B) -> C) -> (A) -> (B) -> C {
    return { a in { b in closure(a,b) }}
}

func curry<A,B,C,D>(_ closure: @escaping (A,B,C) -> D) -> (A) -> (B) -> (C) -> D {
    return { a in { b in { c in closure(a,b,c) }}}
}

func curry<A,B,C,D,E>(_ closure: @escaping (A,B,C,D) -> E) -> (A) -> (B) -> (C) -> (D) -> E {
    return { a in { b in { c in { d in closure(a,b,c,d) }}}}
}

func curry<A,B,C,D,E,F>(_ closure: @escaping (A,B,C,D,E) -> F) -> (A) -> (B) -> (C) -> (D) -> (E) -> F {
    return { a in { b in { c in { d in { e in closure(a,b,c,d,e) }}}}}
}

func curry<A,B,C,D,E,F,G>(_ closure: @escaping (A,B,C,D,E,F) -> G) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> G {
    return { a in { b in { c in { d in { e in { f in closure(a,b,c,d,e,f) }}}}}}
}

func curry<A,B,C,D,E,F,G,H>(_ closure: @escaping (A,B,C,D,E,F,G) -> H) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H {
    return { a in { b in { c in { d in { e in { f in { g in closure(a,b,c,d,e,f,g) }}}}}}}
}