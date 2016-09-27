//
//  SendingViewController.swift
//  PassingDataWithDelegates
//
//  Created by Sergey Nevzorov on 9/27/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnteredData(data: String)
}

class SendingViewController: UIViewController {
    
    @IBOutlet weak var textFieldFilled: UITextField!
    var delegate: DataSentDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendButtonPressed(sender: AnyObject) {
        
        if delegate != nil {
            if textFieldFilled != nil {
                let data = textFieldFilled.text
                delegate?.userDidEnteredData(data!)
                dismissViewControllerAnimated(true, completion: nil)
            }
            
        }
        
    }
   
}
