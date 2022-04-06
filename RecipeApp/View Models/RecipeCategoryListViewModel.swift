//
//  RecipeCategoryListViewModel.swift
//  RecipeApp
//
//  Created by Eihab Ahmed on 06/04/2022.
//

import Foundation
import SwiftUI

class RecipeCategoryListViewModel : ObservableObject {
    func populateCategories() async {
        do {
            let recipeCategoryResponse = try await Webservice().get(url: Constants.Urls.recipeCategoriesURL) { data in
                return try? JSONDecoder().decode(RecipeCategoryResponse.self, from: data)
            }
        } catch {
            print(error)
        }
    }
}

struct RecipeCategoryViewModel : Identifiable {
    let id = UUID()
    private let recipeCategory: RecipeCategory
    
    init(_ recipeCategory: RecipeCategory) {
        self.recipeCategory = recipeCategory
    }
    
    var title: String {
        recipeCategory.title
    }
    
    var imageUrl: URL? {
        URL(string: recipeCategory.imageUrl)
    }
}
