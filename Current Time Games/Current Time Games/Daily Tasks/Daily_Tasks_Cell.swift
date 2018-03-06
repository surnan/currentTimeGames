//
//  Daily_Tasks_Cell.swift
//  Current Time Games
//
//  Created by admin on 3/5/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DailyTaskCell: UITableViewCell {
    

    var dailyTask: DailyTask?
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.yellow
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "!!!HELP ME HELP ME!!!"
        return label
    }()

    let dateLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.yellow
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "!!!Goodbye World!!!"
        return label
    }()
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor.green
        
        [nameLabel, dateLabel].forEach {addSubview($0)}
        addSubview(nameLabel)
        nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 50.0).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nameLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        dateLabel.leftAnchor.constraint(equalTo: nameLabel.rightAnchor, constant: 50).isActive = true
        dateLabel.topAnchor.constraint(equalTo: nameLabel.topAnchor).isActive = true
        dateLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        dateLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
