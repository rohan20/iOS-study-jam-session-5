//
//  QuoteBox.swift
//  QuoteBox
//
//  Created by Rohan Taneja on 30.10.18.
//  Copyright © 2018 Rohan Taneja. All rights reserved.
//

import UIKit

class QuoteBox: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView(){
        backgroundColor = .green
    }
    
}
