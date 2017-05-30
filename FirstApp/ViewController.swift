//
//  ViewController.swift
//  FirstApp
//
//  Created by Luan Silva on 11/05/17.
//  Copyright © 2017 Luan Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func submit(_ sender: UIButton) {
        if input.text != "" {
            performSegue(withIdentifier: "pass", sender: self)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var secondController = segue.destination as! SecondViewController
        
        secondController.myString = "Bem vindo, " + input.text!
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

