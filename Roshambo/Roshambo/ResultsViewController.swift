//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Timothy Ng on 9/23/17.
//  Copyright © 2017 Timothy Ng. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet var resultView: UIView!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var playAgainButton: UIButton!
    

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
