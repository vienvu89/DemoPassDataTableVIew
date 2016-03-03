//
//  DetailViewController.swift
//  DemoPushDataWithTableView
//
//  Created by Vien Vu  on 3/3/16.
//  Copyright © 2016 VienVu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var stringPass: String!
    @IBOutlet weak var labelTest: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.labelTest.text = stringPass
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
