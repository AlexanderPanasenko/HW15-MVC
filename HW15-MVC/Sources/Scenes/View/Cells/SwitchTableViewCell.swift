//
//  SwitchTableViewCell.swift
//  HW15-MVC
//
//  Created by Alexander Panasenko on 05.07.2022.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    
    static let identifier = "SwitchTableViewCell"
    
    private let iconContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    private let mySwitch: UISwitch = {
        let mySwitch = UISwitch()
        mySwitch.onTintColor = .systemGreen
        return mySwitch
    }()
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.clipsToBounds = true
        accessoryType = .none
        
        addSubviewsForAutoLayout([
            iconContainer,
            iconImageView,
            label,
            mySwitch
        ])
        
        NSLayoutConstraint.activate([
            iconContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            iconContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 17),
            iconContainer.heightAnchor.constraint(equalToConstant: 30),
            iconContainer.widthAnchor.constraint(equalToConstant: 30),
            
            iconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            iconImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 23),
            iconImageView.heightAnchor.constraint(equalToConstant: 20),
            iconImageView.widthAnchor.constraint(equalToConstant: 20),
            
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 64),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -38),
            
            mySwitch.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            mySwitch.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 5),
            mySwitch.heightAnchor.constraint(equalToConstant: 30),
            mySwitch.widthAnchor.constraint(equalToConstant: 60),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - ??onfiguration
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
        mySwitch.isOn = false
    }
    
    public func configure(with model: SettingsSwitchOptions) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
        mySwitch.isOn = model.isOn
    }
}


