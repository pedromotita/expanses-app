//
//  AddExtractItemViewController.swift
//  Expanses
//
//  Created by Pedro Mota on 31/08/22.
//

import UIKit

class AddExtractItemViewController: UIViewController {
    
    static let identifier = "AddExtractItemViewController"
    
    @IBOutlet weak var tableView: UITableView!
    
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

extension AddExtractItemViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionTitleTableViewCell") else {
            return UITableViewCell()
        }
        
        return cell
    }
    
}
