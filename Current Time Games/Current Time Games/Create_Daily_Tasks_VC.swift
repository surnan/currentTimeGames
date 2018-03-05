//
//  ViewController.swift
//  Current Time Games
//
//  Created by admin on 3/4/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class Create_Daily_Tasks_ViewController: UIViewController {

    
    
    
    func getTime(){
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        
        print("date = \(date) .... calendar = \(calendar)")
        print("hour = \(hour) .... minutes = \(minutes)")
    }
    
    
    @objc private func handleRightButton(){
        print("addTask Pressed")
    }
    
    @objc private func handleLeftButton(){
        print("reload Button Pressed")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightBlue
        
        getTime()
        
        navigationItem.leftBarButtonItems = [UIBarButtonItem(title: "Reload", style: .plain, target: self, action: #selector(handleLeftButton))]
        navigationItem.rightBarButtonItems = [ UIBarButtonItem(title: "Add Task", style: .plain, target: self, action: #selector(handleRightButton))]
        
    
    
    }
}

