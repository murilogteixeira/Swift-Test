//
//  MenuItem.swift
//  TDD-tutorial-mokacoding.com
//
//  Created by Murilo Teixeira on 28/08/20.
//  Copyright © 2020 Murilo Teixeira. All rights reserved.
//

import Foundation

struct MenuItem {
    let title: String
}

extension MenuItem {
    init(pizza: Pizza) {
        self.init(title: pizza.name)
    }
}
