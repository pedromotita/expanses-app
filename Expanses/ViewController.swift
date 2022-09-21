//
//  ViewController.swift
//  Expanses
//
//  Created by Pedro Mota on 26/08/22.
//

import UIKit

class ExpanseListViewController: UIViewController {
    
    private var tableView = UITableView(frame: .zero, style: .insetGrouped)
    private let months = ["January", "February", "March"]
    
    override func viewDidLoad() {
        title = "Expanses"
        configureTableView()
    }
    
    private func configureTableView() {
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ExpanseTableViewCell.self, forCellReuseIdentifier: ExpanseTableViewCell.reuseIdentifier)
        
        tableView.rowHeight = 43.5
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension ExpanseListViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ExpanseTableViewCell.reuseIdentifier) as? ExpanseTableViewCell else {
            return UITableViewCell()
        }
        let month = months[indexPath.row]
        cell.configure(with: month)
        
        return cell
    }
}
