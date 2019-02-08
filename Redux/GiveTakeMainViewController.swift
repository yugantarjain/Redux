//
//  GiveTakeMainViewController.swift
//  Redux
//
//  Created by yugantar jain on 09/02/19.
//  Copyright © 2019 yugantar jain. All rights reserved.
//

import UIKit

class GiveTakeMainViewController: UIViewController {

   var navTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "1.jpg")!)
        

        // Do any additional setup after loading the view.
        navigationItem.title = navTitle
        
        if(navTitle == "Clothing")
        {
        
        }
    }
    
    @IBOutlet weak var text: UITextView!
    @IBAction func stepper(_ sender: UIStepper) {
        
    }
    @IBOutlet weak var noOfItems: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
