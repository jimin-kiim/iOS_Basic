//
//  SecondViewController.swift
//  01
//
//  Created by 김지민 on 2022/04/02.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var message: String?
    override func viewDidLoad() {
        super.viewDidLoad()
setMessage()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goBacktoFirstOne(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    private func setMessage(){
        if let message = message {
            textLabel.text = message
            textLabel.sizeToFit()
        }
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
