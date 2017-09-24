//
//  GameplayViewController.swift
//  Roshambo
//
//  Created by Timothy Ng on 9/23/17.
//  Copyright © 2017 Timothy Ng. All rights reserved.
//

import UIKit

enum Play {
    case rock, paper, scissors
}

class GameplayViewController: UIViewController {
    
    // MARK: Properties
    
    
    var userPlay: Play!
    var opponentPlay: Play!
    
    //This function generates a random opponent move
    func opponentMove() -> Play {
        let move = Int(1 + arc4random_uniform(3))

        switch move {
        case 1:
           return Play.rock
        case 2:
            return Play.paper
        case 3:
            return Play.scissors
        default:
           return Play.rock
        }
    }
    
 
    
    // MARK: Programmatic Approach
    @IBAction func rockButtonPressed(_ sender: Any) {
        
        userPlay = Play.rock
        let result = compareMoves(userPlay, opponentMove())

        
        let controller: ResultsViewController
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        
        controller.result = result
        
        present(controller, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "paperPressed" {
            self.userPlay = Play.paper
            let controller = segue.destination as! ResultsViewController
            
            let result = compareMoves(userPlay, opponentMove())
            controller.result = result
        }
        
        if segue.identifier == "scissorsPressed" {
            self.userPlay = Play.scissors
            let controller = segue.destination as! ResultsViewController

            let result = compareMoves(userPlay, opponentMove())
            controller.result = result
        }
        
    
    }
    
    // MARK: Code with Segue Approach
    @IBAction func paperButtonPressed(_ sender: UIButton) {
//        performSegue(withIdentifier: "paperPressed", sender: sender)
    }
    
}

