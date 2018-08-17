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
import Material

class NiceTableViewCell: TableViewCell {
    
    static let identifier = "NiceTableViewCell"
    
    static let textLabelFont = RobotoFont.medium(with: 16.0)
    static let detailTextLabelFont = RobotoFont.light(with: 15.0)
    
    override func prepare() {
        super.prepare()
        textLabel?.numberOfLines = 0
        textLabel?.font = NiceTableViewCell.textLabelFont
        textLabel?.textColor = .white
        detailTextLabel?.numberOfLines = 0
        detailTextLabel?.font = NiceTableViewCell.detailTextLabelFont
        detailTextLabel?.textColor = .white
    }
    
    func highlight(search: String, withBackgroundColor color: UIColor) {
        textLabel?.attributedText = textLabel?.text?.generateAttributedString(with: search, backgroundColor: color)
        detailTextLabel?.attributedText = detailTextLabel?.text?.generateAttributedString(with: search, backgroundColor: color)
    }
    
}
