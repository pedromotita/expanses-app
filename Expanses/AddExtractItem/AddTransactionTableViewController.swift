//
//  AddTransactionTableViewController.swift
//  Expanses
//
//  Created by Pedro Mota on 01/09/22.
//

import UIKit

class AddTransactionTableViewController: UITableViewController {
    
    static let identifier = "AddTransactionTableViewController"
    
    private var transaction = ExtractItem(title: "", value: 0.0, date: Date.now)
    
    public weak var delegate: AddTransactionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Add transaction"
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.navigationItem.rightBarButtonItem = .init(title: "Add", style: .plain, target: self, action: #selector(self.addTransaction))
        self.navigationItem.leftBarButtonItem = .init(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelAddition))
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    @objc
    private func addTransaction() {
        print(self.transaction)
        self.dismiss(animated: true)
    }
    
    @objc private func cancelAddition() {
        self.dismiss(animated: true)
    }
    
    @IBAction func onTitleFieldEditing(_ sender: UITextField) {
        if let title = sender.text {
            transaction.title = title
        }
    }
    
    @IBAction func onValueFieldEditing(_ sender: UITextField) {
        if let value = Float(sender.text!) {
            transaction.value = value
        }
    }
}

protocol AddTransactionDelegate: AnyObject {
    
    func didAdd(_ transaction: ExtractItem)
    
}

