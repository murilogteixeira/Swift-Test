//
//  ViewController.swift
//  TDD-tutorial-mokacoding.com
//
//  Created by Murilo Teixeira on 28/08/20.
//  Copyright © 2020 Murilo Teixeira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var menuDataSource: MenuDataSource!
    var cellIdentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        menuDataSource = MenuDataSource(pizzas: [.fixture(name: "Marguerita"), .fixture(name: "Caprichosa")])
    }


}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        menuDataSource.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuDataSource.numberOfRows(inSection: section)
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        guard let item = menuDataSource.item(forRow: indexPath.row, inSection: indexPath.section) else {
            return cell
        }
        
        cell.textLabel?.text = item.title
        
        return cell
    }
    
    
}

