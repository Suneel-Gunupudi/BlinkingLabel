//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by SuneelGunupudi on 10/08/2018.
//  Copyright (c) 2018 SuneelGunupudi. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {
    
    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x: 10, y: 20, width: 200, height: 30))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setup the blinkinglabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        //Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 10, y: 80, width: 125, height: 30))
        toggleButton.setTitle("Toogle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func toggleBlinking(){
        if isBlinking {
            blinkingLabel.stopBlinking()
        }else{
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
    
}

