//
//  User.swift
//  drink-counter-app
//
//  Created by Felipe on 13/10/22.
//

import Foundation
import RealmSwift


class User: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String
    @Persisted var image: String?
    @Persisted var email: String
    @Persisted var age: Int
    @Persisted var creationDate: Date
    @Persisted var lastUpdateDate: Date?
}
