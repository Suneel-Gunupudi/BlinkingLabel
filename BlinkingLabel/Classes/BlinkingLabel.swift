//
//  BlinkingLabel.swift
//  BlinkingLabel
//
//  Created by Suneel Gunupudi on 10/8/18.
//

import UIKit

public class BlinkingLabel: UILabel{
    public func startBlinking() {
        let options: UIViewAnimationOptions = [.repeat, .autoreverse]
        let changeColors: [UIColor] = [.red, .blue, .gray, .orange, .brown, .green, .red, .blue]
        var count = 0
        UIView.animate(withDuration: 0.25, delay: 0.0, options: options, animations: {
            self.alpha = 0
            self.textColor = changeColors[count]
            count = count + 1
            if count == changeColors.count - 1{
                count = 0
            }
            print("Count Value: \(count)")
        }, completion: nil)
        
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
    
}
