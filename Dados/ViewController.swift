//
//  ViewController.swift
//  Dados
//
//  Created by Victor Hugo on 1/23/19.
//  Copyright © 2019 Vintage Robot. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton)
    {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1)
        print(randomDiceIndex2)
    }
    
}
