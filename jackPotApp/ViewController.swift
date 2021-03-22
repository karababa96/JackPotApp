//
//  ViewController.swift
//  jackPotApp
//
//  Created by Ali Karababa on 14.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // IMAGE
    @IBOutlet weak var image14: UIImageView!
    @IBOutlet weak var image20: UIImageView!
    @IBOutlet weak var image19: UIImageView!
    @IBOutlet weak var image18: UIImageView!
    @IBOutlet weak var image17: UIImageView!
    @IBOutlet weak var image16: UIImageView!
    @IBOutlet weak var image15: UIImageView!
    @IBOutlet weak var image13: UIImageView!
    @IBOutlet weak var image12: UIImageView!
    @IBOutlet weak var image10: UIImageView!
    @IBOutlet weak var image11: UIImageView!
    @IBOutlet weak var image9: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var turnButton: UIButton!
    @IBOutlet weak var restTurnLabel: UILabel!
    
    // Arrays
    var numbers = [Int]()
    let imageReference = [0: "goldbar", 1: "cypher", 2: "karivdis", 3: "shadow", 4: "trina"]
    
    // Timer
    
    var timer = Timer()
    var counter = 0.0
    var restTurn = 5
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        turnButton.isMultipleTouchEnabled = true
        self.restTurnLabel.text = "Rest Turn: 5"
    }
    
    @objc func timerFunction() {
        
        counter += 0.1
        
        for x in 5...9 {
                 
                 if self.numbers.count <= 9 {
                     self.numbers.append(x)
                 }
                 let remainder1 = self.numbers.randomElement()! % 5
                 let remainder2 = self.numbers.randomElement()! % 5
                 let remainder3 = self.numbers.randomElement()! % 5
                 let remainder4 = self.numbers.randomElement()! % 5
                 let remainder5 = self.numbers.randomElement()! % 5
                 let remainder6 = self.numbers.randomElement()! % 5
                 let remainder7 = self.numbers.randomElement()! % 5
                 let remainder8 = self.numbers.randomElement()! % 5
                 let remainder9 = self.numbers.randomElement()! % 5
                 let remainder10 = self.numbers.randomElement()! % 5
                 let remainder11 = self.numbers.randomElement()! % 5
                 let remainder12 = self.numbers.randomElement()! % 5
                 let remainder13 = self.numbers.randomElement()! % 5
                 let remainder14 = self.numbers.randomElement()! % 5
                 let remainder15 = self.numbers.randomElement()! % 5
                 let remainder16 = self.numbers.randomElement()! % 5
                 let remainder17 = self.numbers.randomElement()! % 5
                 let remainder18 = self.numbers.randomElement()! % 5
                 let remainder19 = self.numbers.randomElement()! % 5
                 let remainder20 = self.numbers.randomElement()! % 5
        
      
        switch counter {
        
        case 0.1...1.50:
            image1.image = UIImage(named: self.imageReference[remainder1]!)
            image6.image = UIImage(named: self.imageReference[remainder6]!)
            image11.image = UIImage(named: self.imageReference[remainder11]!)
            image16.image = UIImage(named: self.imageReference[remainder16]!)
            self.turnButton.isHidden = true
        case 1.50...3.00:
            image2.image = UIImage(named: self.imageReference[remainder2]!)
            image7.image = UIImage(named: self.imageReference[remainder7]!)
            image12.image = UIImage(named: self.imageReference[remainder12]!)
            image17.image = UIImage(named: self.imageReference[remainder17]!)
        case 3.00...4.50:
            image3.image = UIImage(named: self.imageReference[remainder3]!)
            image8.image = UIImage(named: self.imageReference[remainder8]!)
            image13.image = UIImage(named: self.imageReference[remainder13]!)
            image18.image = UIImage(named: self.imageReference[remainder18]!)
        case 4.50...6.00:
            image4.image = UIImage(named: self.imageReference[remainder4]!)
            image9.image = UIImage(named: self.imageReference[remainder9]!)
            image14.image = UIImage(named: self.imageReference[remainder14]!)
            image19.image = UIImage(named: self.imageReference[remainder19]!)
        case 6.00...7.50:
            image5.image = UIImage(named: self.imageReference[remainder5]!)
            image10.image = UIImage(named: self.imageReference[remainder10]!)
            image15.image = UIImage(named: self.imageReference[remainder15]!)
            image20.image = UIImage(named: self.imageReference[remainder20]!)
        case  7.51...15.0:
            timer.invalidate()
            counter = 0.0
            print(counter)
            self.turnButton.isHidden = false
            if self.restTurn == 0 {
                self.turnButton.isHidden = true
            }
            fallthrough
        default:
            counter = 0.0
           return timer.invalidate()
             
            print("xx")
            break
            }
             
            
      
        
            }
    }
    @IBAction func turnButton(_ sender: Any) {
        
        self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        print("Button Clicked")
        restTurn -= 1
        print(restTurn)
        self.restTurnLabel.text = "Rest Turn: \(self.restTurn)"
        
        if restTurn == 0 {
            self.turnButton.isHidden = true
            self.restTurnLabel.text = "Game Over!"
        }
  
    }
}

    


