//
//  ViewController.swift
//  Expanses
//
//  Created by Pedro Mota on 26/08/22.
//

import UIKit

class ExpanseListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var months: [String] = ["January", "February", "March"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.title = "Expanses"
    }
}

extension ExpanseListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.months.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let month = self.months[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ExpanseTableViewCell.identifier) as? ExpanseTableViewCell else {
            return UITableViewCell()
        }
        
        cell.configure(with: month)
        
        return cell
    }
    
}

