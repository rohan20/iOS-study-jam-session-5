//
//  QuoteBox.swift
//  QuoteBox
//
//  Created by Rohan Taneja on 30.10.18.
//  Copyright © 2018 Rohan Taneja. All rights reserved.
//

import UIKit

class QuoteBox: UIView {
    
    var content: String? {
        didSet {
            contentLabel.text = content
        }
    }

    var author: String? {
        didSet {
            authorLabel.text = author
        }
    }
    
    private let contentLabel = UILabel()
    private let authorLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView(){
        backgroundColor = .green
        
        translatesAutoresizingMaskIntoConstraints = false
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //contentLabel.text = "Welcome to iOS Study Jam!\nBrought to you by WTM Berlin"
        contentLabel.textColor = .black
        
        contentLabel.numberOfLines = 0
        contentLabel.textAlignment = .center
        
        //authorLabel.text = "Rohan Taneja"
        authorLabel.textColor = .white
        
        layer.shadowColor = UIColor.green.cgColor
        layer.shadowRadius = 20.0
        layer.shadowOpacity = 1.0
        
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1
        
        contentLabel.backgroundColor = .cyan
        authorLabel.backgroundColor = .blue
        
        addSubview(contentLabel)
        addSubview(authorLabel)
        
        setupConstraints()
    }
    
    private func setupConstraints(){
        contentLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: contentLabel.rightAnchor).isActive = true
        
        contentLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40).isActive = true
        contentLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        
        authorLabel.topAnchor.constraint(equalTo: contentLabel.bottomAnchor, constant: 20).isActive = true
        authorLabel.rightAnchor.constraint(equalTo: contentLabel.rightAnchor).isActive = true
    }
    
}
