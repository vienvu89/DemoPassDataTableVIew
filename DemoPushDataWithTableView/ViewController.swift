//
//  ViewController.swift
//  DemoPushDataWithTableView
//
//  Created by Vien Vu  on 3/3/16.
//  Copyright © 2016 VienVu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var listItem : [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        listItem = ["abc", "xyz", "hi", "hello"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "PushDetail" {
            let controller  = segue.destinationViewController as! DetailViewController
            let text = sender as! String
            controller.stringPass = text
        }
    }

}

extension ViewController: UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listItem.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell? 
        
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        }
        
        cell?.textLabel?.text = listItem[indexPath.row]
        
        return cell!
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let textPass = self.listItem[indexPath.row]
        self.performSegueWithIdentifier("PushDetail", sender:textPass)
    }
}

