//
//  RecipeListProvider.swift
//  Mealie
//
//  Created by Sam Burnstone on 15/03/2016.
//  Copyright © 2016 Sam Burnstone. All rights reserved.
//

import UIKit

struct RecipeListProvider
{
    static func fetchRecipes() -> [Recipe]
    {
        // For now, we're just going to hardcode some recipes
        return [
            Recipe(title: "Parsnip Curry", image: UIImage(named: "soup")),
            Recipe(title: "Leek and Potato Soup", image: nil),
            Recipe(title: "Greek Salad", image: nil),
            Recipe(title: "Sweet Potato Bread", image: nil),
            Recipe(title: "Veggie Burger and Sweet Potato Fries", image: UIImage(named: "burger"))
        ]
    }
}
