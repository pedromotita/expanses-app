//
//  AddTransactionTableViewController.swift
//  Expanses
//
//  Created by Pedro Mota on 01/09/22.
//

import UIKit

class AddTransactionTableViewController: UITableViewController {
    
    static let identifier = "AddTransactionTableViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Add transaction"
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.navigationItem.rightBarButtonItem = .init(title: "Add", style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = .init(title: "Cancel", style: .plain, target: self, action: nil)
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
}
