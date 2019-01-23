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
    var imageDiceNames = ["dice1", "dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        changeDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton)
    {
        changeDiceImages()
    }
    
    func changeDiceImages()
    {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: imageDiceNames[randomDiceIndex2])
        diceImageView2.image = UIImage(named: imageDiceNames[randomDiceIndex1])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        changeDiceImages()
    }
    
}
