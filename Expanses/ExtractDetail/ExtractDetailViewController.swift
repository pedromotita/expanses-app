//
//  ExpanseDetailViewController.swift
//  Expanses
//
//  Created by Pedro Mota on 30/08/22.
//

import UIKit

class ExtractDetailViewController: UIViewController {

    static let identifier = "ExtractDetailViewController"
    
    private let extractItems = [
        ExtractItem(title: "Lunch", value: 13.00, date: Date.now),
        ExtractItem(title: "ELD Store", value: 3.54, date: Date.now)
    ]
    
    @IBOutlet weak var totalValue: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableHeaderView = nil
    }
}

extension ExtractDetailViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.extractItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let extractItem = self.extractItems[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExtractTableViewCell") else {
            return UITableViewCell()
        }
        
        return cell
    }
}
