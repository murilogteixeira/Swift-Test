//
//  MenuDataSourceTests.swift
//  TDD-tutorial-mokacoding.comTests
//
//  Created by Murilo Teixeira on 28/08/20.
//  Copyright © 2020 Murilo Teixeira. All rights reserved.
//

@testable import TDD_tutorial_mokacoding_com
import XCTest

class MenuDataSourceTests: XCTestCase {
    
    func testHasOneSection() {
        let dataSource = MenuDataSource(pizzas: [.fixture()])
        XCTAssertEqual(dataSource.numberOfSections, 1)
    }
    
    func testRowsInSection() {
        let dataSource = MenuDataSource(pizzas: [.fixture(), .fixture(), .fixture()])
        XCTAssertEqual(dataSource.numberOfRows(inSection: 0), 3)
    }
    
    func testRowsInOutOfBoundsSectionIsZero() {
        let dataSource = MenuDataSource(pizzas: [.fixture(), .fixture(), .fixture()])
        XCTAssertEqual(dataSource.numberOfRows(inSection: 1), 0)
        XCTAssertEqual(dataSource.numberOfRows(inSection: -1), 0)
    }
    
    func testItemForRowAndSection() {
        let dataSource = MenuDataSource(pizzas: [.fixture(name: "Marguerita"), .fixture(name: "Caprichosa")])
        XCTAssertEqual(dataSource.item(forRow: 0, inSection: 0)?.title, "Marguerita")
        XCTAssertEqual(dataSource.item(forRow: 1, inSection: 0)?.title, "Caprichosa")
    }
    
    func testItemForOutOfBoundsRowAndSectionIsNil() {
        let dataSource = MenuDataSource(pizzas: [.fixture(name: "Marguerita"), .fixture(name: "Caprichosa")])
        
        XCTAssertNil(dataSource.item(forRow: 2, inSection: 0))
        XCTAssertNil(dataSource.item(forRow: 0, inSection: 1))
        XCTAssertNil(dataSource.item(forRow: 2, inSection: 1))
        XCTAssertNil(dataSource.item(forRow: -1, inSection: -1))
    }

}
