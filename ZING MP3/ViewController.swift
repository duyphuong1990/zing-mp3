//
//  ViewController.swift
//  ZING MP3
//
//  Created by duy phương on 6/13/17.
//  Copyright © 2017 duy phương. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Logo!.alpha = 0
        text!.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: { 
            self.Logo.alpha = 1
        }) { (finished) in
            UIView.animate(withDuration: 3, animations: { 
                self.text.alpha = 1
                self.text.center = CGPoint(x: self.Logo.center.x, y: 100)
            
            })
        }
    }
   


}

