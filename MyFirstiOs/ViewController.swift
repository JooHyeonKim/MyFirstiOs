//
//  ViewController.swift
//  MyFirstiOs
//
//  Created by 김주현 on 2023/02/06.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue:Int = 0
    @IBOutlet weak var bountyLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refresh()
    }
    
    @IBAction func showAlert(){
        // add alert..
        let message = "현상금은 \(currentValue) 입니다"
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "ok", style: .default, handler: {action in self.refresh()})
        //handler - 버튼을 눌렀을 때 어떤 행동을 해야하는지
        //closure : {} closure는 파라미터를 받을 수 있다.
        //ok 버튼을 누르고 나서 refresh(현상금 흰색글씨 변경)가 되어야 함.
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func refresh(){
        let randomNum = arc4random_uniform(100000) + 1
        currentValue = Int(randomNum)
        bountyLabel.text = "₩\(currentValue)"
    }
    
    @IBAction func showAlert2(){
        let alert = UIAlertController(title: "Your grade is!", message: "A+", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "I got it", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }


}

