//
//  Category.swift
//  Todoey
//
//  Created by Azam on 12/25/17.
//  Copyright © 2017 Azamworld. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
    
}




