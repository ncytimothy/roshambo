//
//  GameplayViewController.swift
//  Roshambo
//
//  Created by Timothy Ng on 9/23/17.
//  Copyright © 2017 Timothy Ng. All rights reserved.
//

import UIKit

class GameplayViewController: UIViewController {
    
    @IBOutlet var rockButton:UIButton!
    @IBOutlet var paperButton:UIButton!
    @IBOutlet var scissorsButton:UIButton!
  
    
    enum Play {
        case rock, paper, scissors
    }
    
    var userPlay = Play.rock
    var opponentPlay = Play.rock

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func opponentMove() {
        let move = Int(1 + arc4random_uniform(3))

        switch move {
        case 1:
           opponentPlay = Play.rock
        case 2:
            opponentPlay = Play.paper
        case 3:
            opponentPlay = Play.scissors
        default:
           opponentPlay = Play.rock
        }
    }
    
    func compareMoves(_ userMove: Play, _ opponentMove: Play) {
        
        print("userMove: \(userMove)")
        print("opponentMove: \(opponentMove) \n")
        
        switch (userMove, opponentMove) {
        case (.rock, .paper):
            print("Paper covers rock. You lose!")
        case (.rock, .scissors):
            print("Rock crushes scissors. You win!")
            
        case (.paper, .rock):
            print("Paper covers rock. You win!")
            
        case (.paper, .scissors):
            print("Scissors cuts paper. You lose!")
            
        case (.scissors, .rock):
            print("Rock crushes scissors. You lose!")
            
        case (.scissors, .paper):
            print("Scissors cuts paper. You win!")
            
        case (.rock, .rock), (.paper, .paper), (.scissors, .scissors):
            print("Tie!")
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
    
        switch button.tag {
        case 1:
            userPlay = Play.rock
        case 2:
            userPlay = Play.paper
        case 3:
            userPlay = Play.scissors
        default:
            return
        }
        
        opponentMove()
        compareMoves(userPlay, opponentPlay)
        
        let controller: ResultsViewController
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        
        present(controller, animated: true, completion: nil)
    }
}

