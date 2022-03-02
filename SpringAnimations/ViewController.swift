//
//  ViewController.swift
//  SpringAnimations
//
//  Created by Николай Петров on 02.03.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var configurationInfoLable: UILabel!
    @IBOutlet var upButtonOutlet: SpringButton!
    @IBOutlet var downButtonOutlet: SpringButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upButtonOutlet.layer.cornerRadius = 15
        downButtonOutlet.layer.cornerRadius = 15
    }
   
    @IBAction func upButton() {
        upButtonOutlet.animation = "fadeIn"
        upButtonOutlet.curve = "spring"
        upButtonOutlet.animate()
    }
    
    @IBAction func downButton() {
        downButtonOutlet.animation = "fadeIn"
        downButtonOutlet.curve = "spring"
        downButtonOutlet.animate()
    }
    
    

}

