//
//  ExtractItemTableViewCell.swift
//  Expanses
//
//  Created by Pedro Mota on 31/08/22.
//

import UIKit

class ExtractItemTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var value: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func configure(with extractItem: ExtractItem) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        DispatchQueue.main.async {
            self.title.text = extractItem.title
            self.date.text = dateFormatter.string(from: extractItem.date)
            self.value.text = "R$ \(extractItem.value)"
            
            if extractItem.value > 0 {
                self.value.textColor = .systemGreen
            } else {
                self.value.textColor = .systemRed
            }
        }
    }

}
