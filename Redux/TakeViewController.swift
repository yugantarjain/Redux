//
//  TakeViewController.swift
//  Redux
//
//  Created by yugantar jain on 09/02/19.
//  Copyright © 2019 yugantar jain. All rights reserved.
//

import UIKit

class TakeViewController: UIViewController {
    
    var a: String!
    var b: String!
    var c: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        name.text = a
        category.text = b
        desc.text = c
    }
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var desc: UILabel!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
