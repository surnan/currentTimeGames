//
//  CreateDailyTask.swift
//  Current Time Games
//
//  Created by admin on 3/5/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

protocol CreateDailyTaskControllerDelegate {
    func didAddDailyTask()
    func didEditDailyTask()
}

class CreateDailyTaskController:UIViewController {
    
    var delegate: CreateDailyTaskControllerDelegate?
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.text = "Name: "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let nameTextField: UITextField = {
       let textField = UITextField()
        textField.placeholder = "Enter Name"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let dateLabel : UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.text = "Time: "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let eventTime : UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .time
        
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        return datePicker
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(nameLabel)
        
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor, constant: 75).isActive = true
        
        
        view.addSubview(nameTextField)
        nameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 75).isActive = true
        
        view.addSubview(dateLabel)
        dateLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dateLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 75).isActive = true
        
        
        view.addSubview(eventTime)
        eventTime.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        eventTime.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 75).isActive = true
        
    }
    
}
