//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Timothy Ng on 9/23/17.
//  Copyright © 2017 Timothy Ng. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultView: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    // MARK: Properties
    var result: String?

    // add something
    
    override func viewWillAppear(_ animated: Bool) {
        
        //The result image will appear only when it is set sucessfully
        
        if let result = result {
            self.resultLabel.text = result
            
            
            
            if result.lowercased().contains("paper covers rock") {
                 resultView.image = UIImage(named: "PaperCoversRock")
            }
            
            if result.lowercased().contains("rock crushes scissors") {
                resultView.image = UIImage(named: "RockCrushesScissors")
            }
            
            if result.lowercased().contains("scissors cut paper") {
                resultView.image = UIImage(named: "ScissorsCutPaper")
            }
            
            if result.lowercased().contains("tie") {
                resultView.image = UIImage(named: "itsATie")
            }
        } else {
            self.resultLabel.text = nil
        }
    }
    

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
