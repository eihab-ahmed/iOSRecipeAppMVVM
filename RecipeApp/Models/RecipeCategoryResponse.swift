//
//  RecipeCategoryResponse.swift
//  RecipeApp
//
//  Created by Eihab Ahmed on 06/04/2022.
//

import Foundation

struct RecipeCategoryResponse : Decodable {
    let categories: [RecipeCategory]
}

struct RecipeCategory : Decodable {
    let imageUrl: String
    let title: String
}
