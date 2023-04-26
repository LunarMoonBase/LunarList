//
//  ItemModel.swift
//  Lunar List
//
//  Created by Parke Gregg April 2023
//  Based on tutorial by Nick Sarno on 3/3/21.
//

import Foundation

// Immutable Struct has only 'let' constants
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}

