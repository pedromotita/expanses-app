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
        
        self.title = "Expanses"
        self.navigationItem.largeTitleDisplayMode = .always
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ExpanseListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let extractDetailsViewController = storyboard.instantiateViewController(withIdentifier: ExtractDetailsViewController.identifier)
        
        extractDetailsViewController.title = self.months[indexPath.row]
        
        if let navigationController = navigationController {
            navigationController.pushViewController(extractDetailsViewController, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.months.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let month = self.months[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: ExpanseTableViewCell.identifier) as? ExpanseTableViewCell {
            cell.configure(with: month)
            return cell
        }
        return UITableViewCell()
    }
    
}

