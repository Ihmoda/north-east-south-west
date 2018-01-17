//
//  ViewController.swift
//  North-East-South-West
//
//  Created by Omar Ihmoda on 1/16/18.
//  Copyright © 2018 Omar Ihmoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var direction_text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func directionButtonPressed(_ sender: UIButton) {
        print("button pressed")
        performSegue(withIdentifier: "directionSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! directionViewController
        let button = sender as! UIButton
        if let text = button.titleLabel?.text {
            self.direction_text = text
        }
        destination.item = self.direction_text
    }
    
  
    
    
}

