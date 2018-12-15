//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Elizeu RS on 15/12/18.
//  Copyright © 2018 elizeurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
  var randomBallIndex: Int = 0
  
  @IBOutlet weak var magicBallImageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

  }

  @IBAction func askBtnPressed(_ sender: UIButton) {
    updateBallImages()
  }
  
  func updateBallImages() {
    
    randomBallIndex = Int.random(in: 0 ... 4)
    
    magicBallImageView.image = UIImage(named: ballArray[randomBallIndex])
  }
  
}

