//
//  ViewController.swift
//  GuessFlag
//
//  Created by Neha Prasad on 1/4/18.
//  Copyright © 2018 NPrasad. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    var countries = [String]() //type-inference.i.e swift can analyse what data type the variable is based on what data type we are putting into it.
    var correctAnswer = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor(red: 1.0, green: 0.6, blue: 0.2, alpha: 1.0).cgColor // here cgcolor is used as layer can't understand the meaning of uicolor as layer is technically low than button.uicolor is data type.
        button2.layer.borderColor = UIColor(red: 1.0, green: 0.6, blue: 0.2, alpha: 1.0).cgColor
        button3.layer.borderColor = UIColor(red: 1.0, green: 0.6, blue: 0.2, alpha: 1.0).cgColor
        
        
        askQuestion()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func askQuestion(){
        countries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countries) as! [String]
        correctAnswer = GKRandomSource.sharedRandom().nextInt(upperBound: 3)
        title = countries[correctAnswer].uppercased()
        button1.setImage(UIImage(named: countries[0]), for:  .normal) //.normal specifies that button will remain in standard state
        button2.setImage(UIImage(named: countries[1]), for:  .normal)
        button3.setImage(UIImage(named: countries[2]), for:  .normal)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

