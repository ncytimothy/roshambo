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
    
    // MARK: Properties
    var result: String?
    
    override func viewWillAppear(_ animated: Bool) {
        if let result = result {
            self.resultLabel.text = result
            
        } else {
            self.resultLabel.text = nil
        }
    }
    

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
