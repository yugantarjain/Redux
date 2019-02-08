//
//  SecondViewController.swift
//  Redux
//
//  Created by yugantar jain on 08/02/19.
//  Copyright © 2019 yugantar jain. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "1.jpg")!)
        // Do any additional setup after loading the view, typically from a nib.
        
        let tap = UIGestureRecognizer(target: self, action: "Give")
        
        
    }

    @IBOutlet var giveButtons: [UIButton]!
    
    func Give()
    {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as! GiveTakeMainViewController
        
    }
    
    
    
}

