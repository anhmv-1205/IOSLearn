//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Van Anh on 3/9/18.
//  Copyright © 2018 Van Anh. All rights reserved.
//

//import Foundation

import UIKit


class ItemsViewController: UITableViewController {
    
    var itemStore: ItemStore!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count	
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }
    
}
