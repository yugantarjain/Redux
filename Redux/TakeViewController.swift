//
//  TakeViewController.swift
//  Redux
//
//  Created by yugantar jain on 09/02/19.
//  Copyright © 2019 yugantar jain. All rights reserved.
//

import UIKit
import Firebase

class TakeViewController: UIViewController {
    
    var ref: DocumentReference! = nil
    
    var a: String!
    var b: String!
    var c: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        confirm.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
        name.text = a
        category.text = b
        desc.text = c
    }
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var confirm: UIButton!
    
    @IBAction func ConfirmTake(_ sender: UIButton) {
        
        db.collection("items").getDocuments() { (querySnapshot, err) in
            if let err = err
            {
                print("Error getting documents: \(err)")
            }
            else
            {
                for document in querySnapshot!.documents {
//                    self.name.append(document.get("name") as! String)
                    let zxc = document.get("desc") as! String
                    if zxc == self.c
                    {
                        document.reference.delete()
                    }
                }
            }
        }
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
