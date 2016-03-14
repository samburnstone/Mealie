//
//  RecipeListViewController.swift
//  Mealie
//
//  Created by Sam Burnstone on 12/03/2016.
//  Copyright © 2016 Sam Burnstone. All rights reserved.
//

import UIKit

class RecipeListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

extension RecipeListViewController: UITableViewDataSource
{
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("RecipeCell")!
        
        cell.textLabel?.text = "Cell \(indexPath.row)"
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }
}

extension RecipeListViewController: UITableViewDelegate
{
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 80
    }
}