//
//  AddExtractItemViewController.swift
//  Expanses
//
//  Created by Pedro Mota on 31/08/22.
//

import UIKit

class AddExtractItemViewController: UIViewController {
    
    static let identifier = "AddExtractItemViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Add transaction"
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.navigationItem.rightBarButtonItem = .init(title: "Add", style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = .init(title: "Cancel", style: .plain, target: self, action: nil)
    }
}
