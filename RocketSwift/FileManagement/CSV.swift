//  MIT License
//
//  Copyright (c) 2018 Philipp Matthes
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//  Created by Philipp Matthes on 17.08.18.
//  Copyright © 2018 Philipp Matthes. All rights reserved.
//

import Foundation

class CSV {
    static func csv(data: String) -> [[String]] {
        return data.components(separatedBy: "\n")
            .map { $0.components(separatedBy: ";") }
    }
    
    static func stripRowsFrom(csvString string: String) -> String {
        return string
            .replacingOccurrences(of: "\r", with: "\n")
            .replacingOccurrences(of: "\n\n", with: "\n")
    }
    
    static func readDataFromCSV(fileName:String, fileType: String)-> String! {
        guard let filepath = Bundle.main.path(forResource: fileName, ofType: fileType) else {
            return nil
        }
        do {
            var contents = try String(contentsOfFile: filepath, encoding: .isoLatin1)
            contents = stripRowsFrom(csvString: contents)
            return contents
        } catch {
            print("File Read Error for file \(filepath)")
            return nil
        }
    }
}
