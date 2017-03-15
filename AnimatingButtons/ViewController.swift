//
//  ViewController.swift
//  AnimatingButtons
//
//  Created by Alex Cuello ortiz on 15/03/2017.
//  Copyright © 2017 Eironeia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var centerButton: UIButton!
    @IBOutlet var leftButton: UIButton!
    @IBOutlet var rightButton: UIButton!
    
    var leftButtonEndPosition:CGPoint!
    var rightButtonEndPosition:CGPoint!
    
    var clicked:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.leftButtonEndPosition = leftButton.center
        self.rightButtonEndPosition = rightButton.center
        
        self.leftButton.layer.cornerRadius = self.leftButton.frame.height/2
        self.rightButton.layer.cornerRadius = self.rightButton.frame.height/2
        self.centerButton.layer.cornerRadius = self.centerButton.frame.height/2
        
        
        leftButton.isHidden = true
        rightButton.isHidden = true
        
        centerButton.layer.zPosition = 1
        
        leftButton.center = centerButton.center
        rightButton.center = centerButton.center
        
        
    }
    
    @IBAction func centerButtonPressed(_ sender: Any) {
        
        self.leftButton.isHidden = false
        self.rightButton.isHidden = false
        
        if !clicked {
            
            UIView.animate(withDuration: 0.3, animations: { 
                
                self.leftButton.center = self.leftButtonEndPosition
                self.rightButton.center = self.rightButtonEndPosition
                
            }, completion: { (_) in
                
            })
            
            clicked = true
        }
        else {
            
            UIView.animate(withDuration: 0.3, animations: {
                
                self.leftButton.center = self.centerButton.center
                self.rightButton.center = self.centerButton.center
                
            }, completion: { (_) in
                self.leftButton.isHidden = true
                self.rightButton.isHidden = true
            })
        
            clicked = false
        }
        
        
    }
    
    @IBAction func leftButtonPressed(_ sender: Any) {
    }
    
    @IBAction func rightButtonPressed(_ sender: Any) {
    }
    
    

}

