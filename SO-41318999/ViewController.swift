//
//  ViewController.swift
//  SO-41318999
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

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\u{1f3f5} \u{1fff}"      // 🏵 ῿

        unicodeRange(from: 0x1f300, to: 0x1fA00)
    }

    func unicodeRange(from: Int, to: Int) {
        for unicodeNumeric in from...to {
            if let scalar = UnicodeScalar(unicodeNumeric) {
                let unicode = Character(scalar)
                let avail = unicode.unicodeAvailable()
                let hex = String(format: "0x%x", unicodeNumeric)
                print("\(unicode) \(hex) is \(avail ? "" : "not ")available")
            }
        }
    }
}
