//
//  ExpanseTableViewCell.swift
//  Expanses
//
//  Created by Pedro Mota on 26/08/22.
//

import UIKit

class ExpanseTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "ExpanseTableViewCell"
    
    private var label = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with title: String) {
        self.label.text = title
    }
    
    private func configureLabel() {
        addSubview(label)
        
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.adjustsFontForContentSizeCategory = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        label.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
}
