//
//  ViewController.swift
//  Current Time Games
//
//  Created by admin on 3/4/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DailyTasksViewController: UITableViewController, CreateDailyTaskControllerDelegate {

    let dailyCell = "dailyCell"
    
    
    func didAddDailyTask(){
        print("something")
    }
    func didEditDailyTask(){
        print("something")
    }
    
    
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
        let createDailyTaskController = CreateDailyTaskController()
        let navController = UINavigationController(rootViewController: createDailyTaskController)
        
        createDailyTaskController.delegate = self
        present(navController, animated: true, completion: nil)
        
    }
    
    @objc private func handleLeftButton(){
        print("reload Button Pressed")
    }
    
    //MARK: UITableView functions
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return UITableViewCell()
        return DailyTaskCell()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    //MARK: View functions
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightBlue
        getTime()
        navigationItem.leftBarButtonItems = [UIBarButtonItem(title: "Reload", style: .plain, target: self, action: #selector(handleLeftButton))]
        navigationItem.rightBarButtonItems = [ UIBarButtonItem(title: "Add Task", style: .plain, target: self, action: #selector(handleRightButton))]
        
        tableView.register(DailyTaskCell.self, forCellReuseIdentifier: dailyCell )
        
    }
}

