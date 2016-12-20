//
//  ViewController.swift
//  Snap
//
//  Created by Sunyining Yang on 12/12/16.
//  Copyright © 2016 Sunyining Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var buttonsV2: [UIButton]!
    
    var snap: UISnapBehavior!
    var animator: UIDynamicAnimator!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //buttonsV2
        
        animator = UIDynamicAnimator(referenceView: self.view)//holds all behavior i'm adding here
        self.view.layoutIfNeeded()//change constrains when button snaps
        
        for button in buttonsV2{
            let origPos = button.center
            button.center = CGPoint(x: self.view.frame.width/2, y: -button.frame.height)
            
            //apply to snap behavior
            snap = UISnapBehavior(item: button, snapTo: origPos)
            snap.damping = 0.2
            animator.addBehavior(snap)
            
        }//manage animations on buttons
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    

}

//referencehttps://www.youtube.com/watch?v=05Z9Si4MbQU

