//
//  ExpanseDetailViewController.swift
//  Expanses
//
//  Created by Pedro Mota on 30/08/22.
//

import UIKit

class ExtractDetailViewController: UIViewController {

    static let identifier = "ExtractDetailViewController"
    
    private var extractItems = [
        ExtractItem(title: "Lunch", value: 13.00, date: Date.now),
        ExtractItem(title: "ELD Store", value: -3.54, date: Date.now)
    ]
    
    @IBOutlet weak var totalValue: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(self.openAddExtractItemModal))
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableHeaderView = nil
    }
    
    @objc
    private func openAddExtractItemModal() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let addExtractItemViewController = storyboard.instantiateViewController(withIdentifier: AddTransactionTableViewController.identifier) as? AddTransactionTableViewController else {
            return
        }
        
        let navigationController = UINavigationController(rootViewController: addExtractItemViewController)
        
        addExtractItemViewController.delegate = self
        addExtractItemViewController.modalPresentationStyle = .pageSheet
        addExtractItemViewController.modalTransitionStyle = .coverVertical
        
        present(navigationController, animated: true, completion: nil)
    }
}

extension ExtractDetailViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.extractItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let extractItem = self.extractItems[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExtractTableViewCell") as? ExtractItemTableViewCell else {
            return UITableViewCell()
        }
        
        cell.configure(with: extractItem)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Latest Expanses"
    }
}

extension ExtractDetailViewController: AddTransactionDelegate {
    func didAdd(_ transaction: ExtractItem) {
        self.extractItems.append(transaction)
        self.tableView.reloadData()
    }
}
