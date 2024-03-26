//
//  ReceiptTableViewCell.swift
//  challenge-receipt
//
//  Created by Kaique Lopes de Oliveira on 26/03/24.
//

import UIKit

class ReceiptTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 1
        return label
    }()
    
    lazy var receiverNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    lazy var amountLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 1
        return label
    }()
    
    lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupViews() {
        addSubview(titleLabel)
        addSubview(receiverNameLabel)
        addSubview(amountLabel)
        addSubview(dateLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        receiverNameLabel.translatesAutoresizingMaskIntoConstraints = false
        amountLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            receiverNameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            receiverNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            amountLabel.topAnchor.constraint(equalTo: receiverNameLabel.bottomAnchor, constant: 8),
            amountLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            dateLabel.topAnchor.constraint(equalTo: amountLabel.bottomAnchor, constant: 8),
            dateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            dateLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
    
    // MARK: - Configuration
    
    func configure(with receipt: Receipt) {
        titleLabel.text = receipt.title
        receiverNameLabel.text = "Nome do favorecido: \(receipt.receiverName)"
        amountLabel.text = "Valor: \(receipt.amount)"
        dateLabel.text = "Data: \(receipt.date)"
    }
}
