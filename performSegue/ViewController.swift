//
//  ViewController.swift
//  performSegue
//
//  Created by 黃毓皓 on 2017/2/21.
//  Copyright © 2017年 ice elson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var account: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var acountCurrent = "123"
    var acountPassword = "12345"
    
    @IBAction func loginin(_ sender: Any) {
        guard account.text == acountCurrent && password.text == acountPassword else {
            print("wrong")
            return
        }
        
        let but = sender as! UIButton
        
        performSegue(withIdentifier: "goNext", sender: but.currentTitle)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! SecondViewController
        
        let but2 = sender as! String
        
        
        secondController.name = but2
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

