//
//  ViewController.swift
//  WarCardGame
//
//  Created by Phạm Duy Đạt on 05/11/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        // khai báo và random số đếm
        let leftNumber = Int.random(in: 2...14)
        //print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        //print(rightNumber)
        
        // đưa action vào nút ấn cập nhật ảnh khi ấn
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        RightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // ramdom điểm số của người chơi
        if leftNumber > rightNumber {
            leftScore += 1
            // chuyển dạng int thành dạng string
            leftScoreLabel.text = String(leftScore)
            // left side wins
        }
        else if leftNumber < rightNumber {
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
            // right side wins
        }
        else{
            
            // Tie
        }
    }
    
}

