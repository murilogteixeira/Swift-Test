//
//  Pizza.swift
//  TDD-tutorial-mokacoding.com
//
//  Created by Murilo Teixeira on 28/08/20.
//  Copyright © 2020 Murilo Teixeira. All rights reserved.
//

import Foundation

struct Pizza {
    let name: String
}

extension Pizza {
    static func fixture(name: String = "Marguerita") -> Pizza {
        return Pizza(name: name)
    }
}
