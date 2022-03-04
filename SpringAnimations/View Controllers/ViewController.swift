//
//  ViewController.swift
//  SpringAnimations
//
//  Created by Николай Петров on 02.03.2022.
//

import Spring

class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var configurationInfoLable: UILabel!
    @IBOutlet var upButtonOutlet: SpringButton!
    @IBOutlet var downButtonOutlet: SpringButton!
        
    @IBOutlet var nameAnimationLable: [UILabel]!
    
    // MARK: - Private Properties
    private var countStart = 0
    private var animationName = DataForView.shared.animationName
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        upButtonOutlet.layer.cornerRadius = 15
        downButtonOutlet.layer.cornerRadius = 15
        
        setupConfInfo()
        setNameAnimation()
    }
    
    // MARK: - IBActions
    @IBAction func upButton() {
        upButtonOutlet.animation = "fadeIn"
        upButtonOutlet.curve = "spring"
        upButtonOutlet.animate()
        
        setBordersUp()
        setNameAnimation()
        setupConfInfo()
    }
    
    @IBAction func downButton() {
        downButtonOutlet.animation = "fadeIn"
        downButtonOutlet.curve = "spring"
        downButtonOutlet.animate()
        
        setBordersDown()
        setNameAnimation()
        setupConfInfo()
    }
    
    // MARK: - Private Methods
    private func setupConfInfo() {
        configurationInfoLable.text = "layer.animation = \"\(animationName[countStart])\"\nlayer.curve = \"easeIn\"\nlayer.duration = 1.0\nlayer.animate()"
    }
    
    private func setBordersUp() {
        if countStart >= animationName.count - 1 {
            countStart = 0
        } else {
            countStart += 1
        }
    }
    
    private func setBordersDown() {
        if countStart == 0 {
            countStart = animationName.count - 1
        } else {
            countStart -= 1
        }
    }
    
    private func setNameAnimation() {
        var supCount = 0
        for (count, lable) in zip(0..<nameAnimationLable.count, nameAnimationLable) {
            if (countStart + count) < animationName.count {
                lable.text = animationName[countStart + count]
            } else {
                lable.text = animationName[supCount]
                supCount += 1
            }
        }
    }
}

