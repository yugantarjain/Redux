//
//  SecondViewController.swift
//  Redux
//
//  Created by yugantar jain on 08/02/19.
//  Copyright © 2019 yugantar jain. All rights reserved.
//

import UIKit
import Firebase

class SecondViewController: UIViewController {
    
    var nextTitle: String?
    var ref: DocumentReference? = nil
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "1.jpg")!)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        db.collection("items").getDocuments { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    if(document.data().keys.description == "number")
                    {
                        self.count = self.count + Int(document.data().values.description)!
                    }
                }
            }
        }
        print(count)
    }
    
    @IBAction func Give(_ sender: UIButton) {
        nextTitle = sender.titleLabel?.text
        performSegue(withIdentifier: "toMain", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="toMain")
        {
            let next = segue.destination as! GiveTakeMainViewController
            next.navTitle = nextTitle
        }
    }
    
    @IBOutlet weak var take: UIButton!
    
}

