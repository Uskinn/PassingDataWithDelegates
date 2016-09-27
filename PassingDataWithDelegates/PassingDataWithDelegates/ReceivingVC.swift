//
//  ReceivingVC.swift
//  PassingDataWithDelegates
//
//  Created by Sergey Nevzorov on 9/27/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {

    @IBOutlet weak var receivingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidEnteredData(data: String) {
        receivingLabel.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "Show" {
            let sendingVC: SendingViewController = segue.destinationViewController as! SendingViewController
            sendingVC.delegate = self
        }
    }

}

