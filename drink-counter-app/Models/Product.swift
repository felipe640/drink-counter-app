//
//  Product.swift
//  drink-counter-app
//
//  Created by Felipe on 13/10/22.
//

import Foundation
import RealmSwift


class Product: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String
    @Persisted var quantity: Int = 0
    @Persisted var price: Float
    @Persisted var image: String?
    @Persisted var creationDate: Date?
    @Persisted var lastUpdateDate: Date?
}

