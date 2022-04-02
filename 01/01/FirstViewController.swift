//
//  FirstViewController.swift
//  01
//
//  Created by 김지민 on 2022/04/02.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gotoSecondViewController(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") else {return}
        nextVC.modalTransitionStyle = .crossDissolve
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC,animated: true,completion: nil)
    }
    
    @IBAction func gotoSecondOne(_ sender: Any) {
        guard let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as?SecondViewController else {return}
        
        secondViewController.message = textInput.text
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
