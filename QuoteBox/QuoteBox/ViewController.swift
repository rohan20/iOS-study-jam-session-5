//
//  ViewController.swift
//  QuoteBox
//
//  Created by Rohan Taneja on 30.10.18.
//  Copyright © 2018 Rohan Taneja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstQuoteBox: QuoteBox!
    @IBOutlet weak var secondQuoteBox: QuoteBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstQuoteBox.content = "First Box"
        firstQuoteBox.author = "Rohan"
        
        secondQuoteBox.content = "Second Box"
        secondQuoteBox.author = "Taneja"
    }
}

