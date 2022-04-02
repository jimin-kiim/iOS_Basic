//
//  ViewController.swift
//  01
//
//  Created by 김지민 on 2022/04/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func firstButton(_ sender: Any) {
        firstLabel.textColor = .green
        firstLabel.text="버튼이 눌렸다"
        firstLabel.sizeToFit()
    }
    
}

