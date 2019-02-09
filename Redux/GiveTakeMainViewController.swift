//
//  GiveTakeMainViewController.swift
//  Redux
//
//  Created by yugantar jain on 09/02/19.
//  Copyright © 2019 yugantar jain. All rights reserved.
//

import UIKit
import Firebase

class GiveTakeMainViewController: UIViewController {
    
    var ref: DocumentReference? = nil

   var navTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "1.jpg")!)

        // Do any additional setup after loading the view.
        navigationItem.title = navTitle
        noOfItems.text = "0"
        submitButton.layer.cornerRadius = 10
    }
    
    @IBOutlet weak var text: UITextView!
    
    
    @IBAction func stepper(_ sender: UIStepper) {
        noOfItems.text = "\(Int(sender.value))"
    }
    @IBOutlet weak var noOfItems: UILabel!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func submit(_ sender: UIButton) {
        ref = db.collection("items").addDocument(data: [
            "desc" : text.text,
            "name" : Auth.auth().currentUser?.displayName,
            "number": noOfItems.text
            ])
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
