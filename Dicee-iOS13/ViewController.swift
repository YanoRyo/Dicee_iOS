//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceeImageView1: UIImageView!
    @IBOutlet weak var diceeImageView2: UIImageView!
    
    var imageArray : Array = ["DiceOne","DiceTwo","DiceTheree","DiceFour","DiceFive","DiceSix"]
    
    var leftDiceNumber = 0
    var rightDiceNumber = 0
    @IBOutlet weak var rollButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceeImageView1.image = UIImage(named: "DiceSix")
        diceeImageView2.image = UIImage(named: "DiceTwo")
        rollButton.layer.cornerRadius = 10.0
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
//        ダイスの引数をランダムにする
        leftDiceNumber = Int(arc4random_uniform(6))
        rightDiceNumber = Int(arc4random_uniform(6))
//        ダイスを配列で返す
        diceeImageView1.image = UIImage(named: imageArray[leftDiceNumber])
        diceeImageView2.image = UIImage(named: imageArray[rightDiceNumber])
        
        
    }
}

