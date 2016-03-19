//
//  RecipeListTableViewCell.swift
//  Mealie
//
//  Created by Sam Burnstone on 19/03/2016.
//  Copyright © 2016 Sam Burnstone. All rights reserved.
//

import UIKit

class RecipeListTableViewCell: UITableViewCell
{
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var recipeImageView: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        recipeImageView.clipsToBounds = true
        recipeImageView.layer.cornerRadius = recipeImageView.bounds.height / 2
    }
}
