//
//  Daily_Tasks_Cell.swift
//  Current Time Games
//
//  Created by admin on 3/5/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DailyTaskCell: UITableViewCell {
    

    let label1 : UILabel = {
        let myLabel = UILabel()
        myLabel.backgroundColor = UIColor.yellow
        myLabel.textColor = UIColor.black
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.text = "!!!Hello World!!!"
        return myLabel
    }()

    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor.green
        addSubview(label1)
        label1.leftAnchor.constraint(equalTo: leftAnchor, constant: 50.0).isActive = true
        label1.rightAnchor.constraint(equalTo: rightAnchor, constant: -50.0).isActive = true
        label1.topAnchor.constraint(equalTo: topAnchor).isActive = true
        label1.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
