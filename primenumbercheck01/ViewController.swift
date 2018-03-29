//
//  ViewController.swift
//  PrimeNumber
//
//  Created by D7703_17 on 2018. 3. 29..
//  Copyright © 2018년 D7703_17. All rights reserved.
//
import UIKit
class ViewController: UIViewController, UITextViewDelegate{
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var txtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btNumberCheck(_ sender: UIButton) {
        let Number=Int(txtField.text!)
        var Prime = true
        if Number != 1 && Number != 2 {
            for i in 2 ..< Number! {
                if Number! % i == 0{
                    Prime = false
                }
            }
            if Prime == true {
                label.text="Prime Number!!"
            } else {
                label.text="Not Prime number!!"
            }
            // Do any additional setup after loading the view, typically from a nib.
        }
    }
    
    @IBAction func btNumberReset(_ sender: UIButton) {
        txtField.text=""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtField.resignFirstResponder()
    }
    
    func textFieldShouldClear(_ textField: UITextField)
        -> Bool {
            txtField.resignFirstResponder()
            return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        label.resignFirstResponder()
        return true
        
    }
}
