//
//  ExpanseTableViewCell.swift
//  Expanses
//
//  Created by Pedro Mota on 26/08/22.
//

import UIKit

class ExpanseTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    static let identifier = "ExpanseTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func configure(with name: String) {
        self.label.text = name
    }

}
