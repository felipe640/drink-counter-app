//
//  GenericCell.swift
//  drink-counter-app
//
//  Created by Felipe on 13/10/22.
//

import Foundation
import RealmSwift


class GenericCell: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String
    @Persisted var image: String?
    @Persisted var elementType: String
    @Persisted var creationDate: Date
    @Persisted var lastUpdateDate: Date?
    @Persisted var product: Product?
    @Persisted var restaurant: Restaurant?
}
