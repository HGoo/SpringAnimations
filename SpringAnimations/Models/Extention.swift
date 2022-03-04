//
//  Extention.swift
//  SpringAnimations
//
//  Created by Николай Петров on 04.03.2022.
//

import Foundation

struct MOdelView {
     var countStart = 0
     var animationName = DataForView.shared.animationName

     func setupConfInfo() {
        configurationInfoLable.text = "layer.animation = \"Shake\"\nlayer.curve = \"easeIn\"\nlayer.duration = 1.0\nlayer.animate()"
    }
    
     func setBordersUp() {
        if countStart >= animationName.count {
            countStart = 0
        } else {
            countStart += 1
        }
    }
    
     func setBordersDown() {
        if countStart == 0 {
            countStart = animationName.count
        } else {
            countStart -= 1
        }
    }
 
     func setNameAnimation() {
        for (count, lable) in zip(0..<nameAnimationLable.count, nameAnimationLable) {
            if (countStart + count) < animationName.count {
                lable.text = animationName[countStart + count]
            } else {
                lable.text = animationName[count]
            }
        }
    }
}
