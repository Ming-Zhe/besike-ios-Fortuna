//
//  ViewController.swift
//  Fortuna
//
//  Created by Ming-Zhe on 14/10/17.
//  Copyright (c) 2014年 Ming-Zhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func rootViewTapped(sender: UITapGestureRecognizer) {
        displayRandomQuotes()
    }
    @IBOutlet weak var quotationTextView: UITextView!
    
    var delegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("viewDidLoad quotationTextView: \(quotationTextView)")
        quotationTextView.editable = false
        quotationTextView.selectable = false
        displayRandomQuotes()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func displayNegativeQuotes(){
        var quotes = delegate.negativeQuotes
        var randomOne = Int(arc4random_uniform(UInt32(quotes.count)))
        var quote = quotes[randomOne]
        quotationTextView.text = quote
    }
    func displayPositiveQuotes(){
        var quotes = delegate.positiveQuotes
        var randomOne = Int(arc4random_uniform(UInt32(quotes.count)))
        var quote = quotes[randomOne]
        quotationTextView.text = quote
    }
    func displayRandomQuotes(){
        var temp = arc4random_uniform(2)
        if temp == 0 {
            displayNegativeQuotes()
        } else {
            displayPositiveQuotes()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

