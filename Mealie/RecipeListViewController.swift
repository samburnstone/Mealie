//
//  RecipeListViewController.swift
//  Mealie
//
//  Created by Sam Burnstone on 12/03/2016.
//  Copyright © 2016 Sam Burnstone. All rights reserved.
//

import UIKit

class RecipeListViewController: UIViewController
{
    let recipes = RecipeListProvider.fetchRecipes()
}

extension RecipeListViewController: UITableViewDataSource
{
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let recipe = recipes[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("RecipeCell") as! RecipeListTableViewCell
        cell.titleLabel.text = recipe.title
        cell.recipeImageView.image = recipe.image
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return recipes.count
    }
}

extension RecipeListViewController: UITableViewDelegate
{
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 80
    }
}