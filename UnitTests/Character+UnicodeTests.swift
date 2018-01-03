//
//  Character+UnicodeTests.swift
//  UnitTests
//
//  Copyright © 2018 Xavier Schott
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

import XCTest

class Character_UnicodeTests: XCTestCase {

    func testAgainstValidCharacters() {
        let codes:[Character] = [
            "\u{2764}", // ❤
            "\u{1f600}" // 😀
        ]
        for code in codes {
            XCTAssertTrue(code.unicodeAvailable())
        }
    }

    func testAgainstInvalidCharacters() {
        let codes:[Character] = [
            "\u{1F544}",    // 🕄
            "\u{1f84c}"     // 🡌
        ]
        for code in codes {
            XCTAssertFalse(code.unicodeAvailable())
        }
    }

    func testMultipleCodePoints() {
        let codes:[Character] = [
            "\u{1F938}\u{200D}\u{2642}\u{FE0F}",    // 🤸‍♂️
            "\u{1F476}\u{1F3FE}"                    // 👶🏾
        ]
        for code in codes {
            XCTAssertTrue(code.unicodeAvailable())
        }
    }
}
